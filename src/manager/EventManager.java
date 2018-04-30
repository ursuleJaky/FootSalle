package manager;

import java.util.ArrayList;
import java.util.Date;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import beans.Event;
import beans.User;
import utils.HibernateUtils;

public class EventManager {


		/** DB Methods **/
		public void ajouterEvent( Event e) {
			
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			session.save(e);	
			session.getTransaction().commit();
			
		}

		
		
		public void supprimerEvent(int id) {
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Event e = (Event)session.load(Event.class, id);
			session.delete(e);
			session.getTransaction().commit();
			
		}
		
		
	
		@SuppressWarnings("unchecked")
		public Event SelectInfoEvent(int id_event) {
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			
			Criteria crit = session.createCriteria(Event.class);
						
			/*
			session.createCriteria(Event.class)
				    .add( Expression.gt("id", id_event));
			*/
			
			crit.add(Restrictions.eq("id", id_event));
			Event e = (Event)crit.list().get(0);
			session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
			
			
			return e;
		}
		
		public ArrayList <Event> SelectInfoToutEvent() {
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			
			Criteria crit = session.createCriteria(Event.class);
			Date dt = new Date ();

			//debut event
			crit.add( Restrictions.ge("dateDebutEvenement", dt) );
			
			
			ArrayList <Event> e = (ArrayList<Event>) crit.list();
			
			
			session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
			
			return e;
		}
		
		public ArrayList <Event> RechercheEvent() {
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			
			Criteria crit = session.createCriteria(Event.class);
			crit.add(Restrictions.like("activite", "volley"));
			
			ArrayList<Event> es = new ArrayList<Event> ();
			es = (ArrayList<Event>) crit.list();


			
			
			System.out.println(es.toString());
			
			session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
			return es;
			
		}
		
		public void AjoutParticipantEvent (int id_event, int id_participant) {
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Event p = (Event) session.load(Event.class, id_event); //Chargement de l'event de la BDD à l'objet Event
			p.setId(id_event);
			p.setParticipants(p.getParticipants().trim());
			Event p1 = p;
			p1.setParticipants((p.getParticipants()+id_participant+",").trim());
			p = (Event) session.merge(p1);

			session.getTransaction().commit();
		}

		public void UpdateInfoEvent (int id, Event p1) {
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Event p = (Event) session.load(Event.class, id); //Chargement de l'event de la BDD à l'objet Event

			p = p1;
			p.setId(id);
			p = (Event) session.merge(p1);

			session.getTransaction().commit();
		}
		
	
		public java.sql.Date dateDuJour () {
			
			Date dateDuJour = new Date();
			
			java.sql.Date creationDate = new java.sql.Date(dateDuJour.getTime());
				
				 return creationDate;
		}

}
