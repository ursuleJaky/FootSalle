package com.utils.servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Event;
import manager.EventManager;


/**
 * Servlet implementation class EventInfo
 */
@WebServlet("/EventInfo")
public class EventInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static final String CHAMP_LIEU = "lieu";
	public static final String CHAMP_EMPLACEMENT = "complexe";
	public static final String CHAMP_SPORT = "sport";
	public static final String CHAMP_PRIX = "prix";
	public static final String CHAMP_NBJOUEURS = "nb_joueurs";
	public static final String CHAMP_NBJOUERUS_MANQUANTS = "nb_joeurs_manquants";
	public static final String CHAMP_PAGE_CREER_ANNONCE = "/vues/creer_annonce.jsp"; 
	public static final String CHAMP_DATE = "date"; 
	public static final String CHAMP_HEURE = "heure"; 
	public static final String PAGE_ACCUEIL = "/vues/profil/AccueilTemp.jsp";
	 
    public EventInfo() {
    	super();
    }

	/**
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		EventManager em = new EventManager();
		Event event = (Event) em.SelectInfoEvent(2); //TODO recuperer l'id de la session en cours en dur pour l'instant

		System.out.println(event.toString());
		request.setAttribute("lieu", ((beans.Event) event).getVille());
		request.setAttribute("complexe", ((beans.Event) event).getLocalisationEvenement());
		request.setAttribute("sport", ((beans.Event) event).getActivite());
		request.setAttribute("Prix", ((beans.Event) event).getPrixEvent()); 
		request.setAttribute("nb_joueurs", ((beans.Event) event).getNbPersonneVoulu());
		request.setAttribute("nb_joeurs_manquants", ((beans.Event) event).getNbPersonneVoulu()-((beans.Event) event).getNbPersonneInscrite());
		request.setAttribute("participants", ((beans.Event) event).getParticipants());
		request.setAttribute("Date", ((beans.Event) event).getDateDebutEvenement().toString());
		request.setAttribute("Heure", ((beans.Event) event).getDateDebutEvenement().toString());
	
		this.getServletContext().getRequestDispatcher("/vues/creer_annonce.jsp").forward(request, response);
		*/
		this.getServletContext().getRequestDispatcher( "/vues/creer_annonce.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			System.out.println("Event initialisé!");
			
		 	String ville = request.getParameter(CHAMP_LIEU);
	        String emplacement = request.getParameter(CHAMP_EMPLACEMENT);
	        String activite = request.getParameter(CHAMP_SPORT);
	        Float prix = new Float(Float.parseFloat((request.getParameter(CHAMP_PRIX).trim())));
	        int nbMaxUser = Integer.parseInt(request.getParameter(CHAMP_NBJOUEURS));
	        int nbManquantUser = Integer.parseInt(request.getParameter( CHAMP_NBJOUERUS_MANQUANTS));
	        String date = request.getParameter( CHAMP_DATE);
	        String heure = request.getParameter( CHAMP_HEURE );
	        String DateHeure = date+" "+heure+":00";
	        
	        java.util.Date dateE = null;
	        Date DateSQL = new Date (99999999);
	        
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	        try {
				dateE = format.parse(DateHeure);
				
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	        
	        DateSQL = new Date (dateE.getTime());
	        //java.sql.Date DatePEvent = new 
	        
	        Event e = new Event(ville,activite,DateSQL,emplacement,nbMaxUser,nbManquantUser,1,prix); // Identifiant du créateur à récupérer à partir de la session
	        
	        EventManager em = new EventManager();
	        em.ajouterEvent(e);
	        
	        //System.out.println(e);
	        System.out.println("Event créé!");
	        
	      

			this.getServletContext().getRequestDispatcher( PAGE_ACCUEIL ).forward( request, response );

			//doGet(request, response);
	}

}
