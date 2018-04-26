package manager;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import beans.Event;
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

			ArrayList <Event> e = (ArrayList<Event>) crit.list();
			
			
			
			session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
			
			return e;
		}
		
		
		public void AjoutParticipantEvent (int id_event, Event p1, int id_participant) {
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Event p = (Event) session.load(Event.class, id_event); //Chargement de l'event de la BDD � l'objet Event

			p = p1;
			p.setId(id_event);
			p.setParticipants(p.getParticipants()+id_participant+",");
			p = (Event) session.merge(p1);

			session.getTransaction().commit();
		}

		public void UpdateInfoEvent (int id, Event p1) {
			
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Event p = (Event) session.load(Event.class, id); //Chargement de l'event de la BDD � l'objet Event

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
