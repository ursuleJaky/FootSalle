package test;

import java.sql.Date;
import java.util.ArrayList;

import beans.Event;
import manager.EventManager;
import utils.HibernateUtils;

public class Test_Main_Event {

	public static void main(String[] args) {

		
		Date dt_creation= new Date(20140101);
		Date dt_debutEvent= new Date(20140101);
		Date dt_finEvent= new Date(20140101);
		/* Création des Evenements*/		
		

		
		EventManager em = new EventManager();
	
		
		Event ev= new Event ();
		ev = em.RechercheEvent();
		System.out.println(ev.toString());
		
		HibernateUtils.sessionFactory.close();
		
		
		
		
		
		

	}

}
