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
		
		Query query = session.createQuery("from User where Id_user = :id");
		query.setParameter("id", id_user);
		
	    User user = (User)query.uniqueResult(); 
	     
	    //System.out.println(user);
	       
		session.getTransaction().commit();
		HibernateUtils.sessionFactory.close();
		
		return user;
	}

	public void UpdateInfoUtilisateur (int id, User p1) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User p = (User) session.load(User.class, id); //Chargement de l'utilisateur de la BDD � l'objet User

		p = p1;
		p.setId(id);
		p = (User) session.merge(p1);

		session.getTransaction().commit();
	}
	
	public boolean SelectInfoUtilisateur(String pseudo) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		String hql = "usernickname from User";
	    Query query =session.createQuery(hql);
	    User user = (User)query.uniqueResult(); 
	    
	    if (user.getPseudoUtilisateur()==pseudo) {
			session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
	    	return true;
	    }
	    else {
			session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
	    	return false;
	    }
	    
	 

		
	}
	
	
public Boolean CheckUtilisateurConnexion(String motDePasse, String mail) {
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		String hql = "from User where Email like '"+mail+"%'";
	    Query query =session.createQuery(hql);
	    User user = (User)query.uniqueResult(); 
	     
	    if(user == null) return false;
	    System.out.println(user);
	    
	    String motDePasseUserBDD = user.getMotDePasseUtilisateur().trim();
	    
	    if(motDePasseUserBDD.equals(motDePasse)) {
	    	session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
			
	    	return true;
	    } else {
	    	session.getTransaction().commit();
			HibernateUtils.sessionFactory.close();
			
	    	return false;
	    }	
		
	}	


public Boolean CheckEmailPseudoUserExistence(String email, String pseudo) {
	//Démarrage de la transaction
	Session session = HibernateUtils.getSessionFactory().getCurrentSession();
	session.beginTransaction();
	
	//Querry
	Query query = session.createQuery("from User where Email = :email or Usernickname = :pseudo");
	
	//Binding
	query.setParameter("email", email);
	query.setParameter("pseudo", pseudo);
	
	//Execution
    User user = (User)query.uniqueResult(); 
     
    
    if(user == null) {
    	return false;
    }
    return true;
    
}	
}
