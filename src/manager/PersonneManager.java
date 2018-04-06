package manager;

import org.hibernate.Session;

import beans.Personne;
import utils.HibernateUtils;


public class PersonneManager {

	
	public void ajouterPersonne( String nom, String prenom, String tel, String email) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		Personne p = new Personne ();
		p.setNom(nom);
		p.setPrenom(prenom);
		p.setEmail(email);
		p.setTel(tel);
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
