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
		
		Event e = new Event("futsal",dt_creation,dt_debutEvent,dt_finEvent,"Futsal Bordeaux","2 rue hôtel de ville","Bordeaux","33000","France",false,5,5,"","Bonjour, retrouvez-nous au Futsal de Bordeaux pour une partie ! Bonne humeur BLABLABLABLABLA",8,15);
		
		Event e1 = new Event("futsal",dt_creation,dt_debutEvent,dt_finEvent,"Futsal Reunion","2 rue hôtel de ville","Saint Jo","97480","Reunion",false,5,5,"","Bonjour, retrouvez-nous au Futsal de Bordeaux pour une partie ! Bonne humeur BLABLABLABLABLA",8,20);
		
		
		EventManager em = new EventManager();
		
		//em.SelectInfoToutEvent();
		
		em.AjoutParticipantEvent(2,10);
		
		/*
		ArrayList<Event> a = new ArrayList<Event>();
		a= em.SelectInfoToutEvent();
		for(Event a1: a) {
			System.out.println(a1.toString());
		}
		
		System.out.println(em.SelectInfoEvent(1));
		*/
		
		
		//em.ajouterEvent(e);
		//em.UpdateInfoEvent(2,e1);
		//em.AjoutParticipantEvent (1,e1,);
		
		HibernateUtils.sessionFactory.close();
	}
}