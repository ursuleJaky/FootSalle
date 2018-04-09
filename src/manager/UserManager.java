package manager;

import org.hibernate.Session;
import beans.User;
import utils.HibernateUtils;

public class UserManager {
	
	public void ajouterUtilisateur( User p) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);	
		session.getTransaction().commit();
	}
	
	
	public void supprimerUtilisateur(int id) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User p = (User)session.load(User.class, id);
		session.delete(p);
		session.getTransaction().commit();
		
	}
	
	

}
