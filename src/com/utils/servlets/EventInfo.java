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
import javax.servlet.http.HttpSession;

import org.json.JSONArray;

import beans.Event;
import manager.EventManager;


@WebServlet("/EventInfo")
public class EventInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
    public EventInfo() {
    	super();
    }

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Event initialisé!");
		
	 	String ville = request.getParameter("lieu");
        String emplacement = request.getParameter("complexe");
        String activite = request.getParameter("sport");
        float prix = Float.parseFloat((request.getParameter("prix").trim()));
        int nbMaxUser = Integer.parseInt(request.getParameter("nb_joueurs"));
        int nbManquantUser = Integer.parseInt(request.getParameter("nb_joeurs_manquants"));
        String date = request.getParameter("date");
        String heure = request.getParameter("heure");
        String DateHeure = date+" "+heure+":00";
        
        java.util.Date dateE = null;
        
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        try {
			dateE = format.parse(DateHeure);
			
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        
        Date DateSQL = new Date (dateE.getTime());

        HttpSession userSession = request.getSession(true);
        int idUser = (int) userSession.getAttribute("idUser");
        String emailUser = (String) userSession.getAttribute("emailUser");
        Event e = new Event(ville, activite, DateSQL, emplacement, nbMaxUser, 
        		nbManquantUser, idUser, prix); 
        
        EventManager em = new EventManager();
        em.ajouterEvent(e);
        
        JSONArray rep = new JSONArray();
		rep.put(emailUser);
		response.getWriter().write(rep.toString());
	}

}
