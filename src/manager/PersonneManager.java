package manager;

import org.hibernate.Session;

import beans.Personne;
import utils.HibernateUtils;


public class PersonneManager {

	
	public void ajouterPersonne( Personne p) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		
		session.save(p);
		session.getTransaction().commit();
	}
	
	
	public void supprimerPersonne(int id) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		Personne p = (Personne)session.load(Personne.class, id);
		session.delete(p);
		session.getTransaction().commit();
		
	}
}
