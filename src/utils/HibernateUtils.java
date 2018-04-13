package utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {
	
	public static final SessionFactory sessionFactory;
	
	
	static {
			try {
				
				sessionFactory = new Configuration().configure().buildSessionFactory();
				
			}catch (Throwable ex) {
				System.err.println("Cr�ation de l objet session Factory � �chou�." + ex);
				throw new ExceptionInInitializerError(ex);
			}
	}
	
	
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
