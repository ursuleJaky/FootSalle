package com.utils.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import beans.User;

import manager.UserManager;
import utils.General_functions;


@WebServlet("/controleConnexion")
public class controleConnexion extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    public HttpSession userSession;
    public boolean connected = false;
       

    public controleConnexion() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("I am in the doGet");
		if("OK".equals(request.getParameter("connect"))){
			System.out.println("doPost connect == " + request.getParameter("connect"));
			connexion(request, response);
		} else if ("OK".equals(request.getParameter("disconnect"))){
			System.out.println("doPost disconnect == " + request.getParameter("disconnect"));
			deconnexion(request, response);
		}
		//userSession = request.getSession(true);
		request.getRequestDispatcher("/vues/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if("OK".equals(request.getParameter("connect"))) {
			request.setAttribute("disconnect", "KO");
			request.setAttribute("inscription", "KO");
			connexion(request, response);
		} else if ("OK".equals(request.getParameter("disconnect"))) {
			request.setAttribute("connect", "KO");
			request.setAttribute("inscription", "KO");
			deconnexion(request, response);
		} else if ("OK".equals(request.getParameter("inscription"))) {
			request.setAttribute("connect", "KO");
			request.setAttribute("disconnect", "KO");
			try {
				inscription(request, response);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		} else {
			doGet(request, response);
		}
	}

	private void inscription(HttpServletRequest request, HttpServletResponse response) throws IOException, JSONException {
		//R�cuperation du HTTP Post
	    String email = request.getParameter( "email" );
        String motDePasse = request.getParameter( "motDePasse" );
        String pseudo = request.getParameter( "inscription_pseudo" );
        
        //Cr�ation du model User
        UserManager um = new UserManager();
        
        //Check E-mail & pseudo
        JSONObject data = new JSONObject();
        if(!um.CheckEmailPseudoUserExistence(email, pseudo)) {
        	//Ajout de l'utislisateur
            um.ajouterUtilisateur(new User(pseudo, email, motDePasse));
            data.put("status", "ok");
            data.put("message", "Votre compte a bien été créé.");
        }else {
            data.put("status", "nok");
            data.put("message", "Erreur lors de l'inscription, pseudo ou email déjà existant.");
        }
     
        //Send response to client
		response.getWriter().write(data.toString());
	}	
	
	private void deconnexion(HttpServletRequest request, HttpServletResponse response) throws IOException {
		userSession = request.getSession(true);
		System.out.println("I am in deconnexion "+userSession.getAttribute("email"));
		
		userSession.removeAttribute("email");
		userSession.removeAttribute("user_id");
		userSession.invalidate();
		connected = false;
		JSONArray rep = new JSONArray();
		rep.put("disconnected");
		response.getWriter().write(rep.toString());
	}
	
	private void connexion(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");	
        String motDePasse = request.getParameter("motDePasse");
        UserManager uman = new UserManager();
        
        connected = uman.CheckUtilisateurConnexion(motDePasse, email);
        System.out.println("I am in connexion "+ connected);
		if(connected == true) {
	        userSession = request.getSession(true);
			userSession.setAttribute("connected", "i'm connected");
			JSONArray rep = new JSONArray();
			rep.put(email);
			rep.put("connected");
			response.getWriter().write(rep.toString());
		}
	} 
}
