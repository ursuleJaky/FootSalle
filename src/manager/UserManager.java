package manager;

import org.hibernate.Query;
import org.hibernate.Session;

import beans.User;
import utils.HibernateUtils;

public class UserManager {

	
	
	/** DB Methods **/
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
	
	
	public User SelectInfoUtilisateur(int id_user) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		String hql = "from User where Id_user="+id_user;
	    Query query =session.createQuery(hql);
	    User user = (User)query.uniqueResult(); 
	     
	    System.out.println(user);
	       
		session.getTransaction().commit();
		HibernateUtils.sessionFactory.close();
		
		return user;
	}

	public void UpdateInfoUtilisateur (int id, User p1) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User p = (User) session.load(User.class, id);
		p = p1;
		session.update(p);
		session.getTransaction().commit();
	}
}
