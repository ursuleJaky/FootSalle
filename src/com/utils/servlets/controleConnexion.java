package com.utils.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import manager.UserManager;
import utils.General_functions;


@WebServlet("/controleConnexion")
public class controleConnexion extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String CHAMP_EMAIL = "email";
	private static final String CHAMP_MOT_DE_PASSE = "motDePasse";
    public HttpSession userSession = null;
    public boolean connected = false;
       

    public controleConnexion() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("connect") == "OK"){
			System.out.println("doPost connect == " + request.getParameter("connect"));
			connexion(request, response);
		} else if (request.getParameter("disconnect") == "OK"){
			System.out.println("doPost disconnect == " + request.getParameter("disconnect"));
			deconnexion(request, response);
		}
		
		request.getRequestDispatcher("/vues/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		//Dans le cas d'un POST de connection
		if(request.getParameter("connect").equals("OK")) {
			System.out.println("doPost connect == " + request.getParameter("connect"));
			connexion(request, response);
		//Dans le cas d'un POST de déconnection
		} else if (request.getParameter("disconnect") == "OK") {
			System.out.println("doPost disconnect == " + request.getParameter("disconnect"));
			deconnexion(request, response);
		}else {
			System.out.println("doPost disconnect == " + request.getParameter("disconnect") + " connect == " + request.getParameter("connect"));
			doGet(request, response);
		}
		
		
			
		//request.getRequestDispatcher("/vues/index.jsp").forward(request, response);
	}
	
	private void deconnexion(HttpServletRequest request, HttpServletResponse response) {
		userSession.invalidate();
		connected = false;
		request.setAttribute("userConnected", "KO");
		
		String email = request.getParameter( CHAMP_EMAIL );
		try {
			General_functions.validationEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}
        String motDePasse = request.getParameter( CHAMP_MOT_DE_PASSE );
        System.out.println("==========================================================================================");
        System.out.println(email + " " + motDePasse);
	}
	
	private void connexion(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");	
        String motDePasse = request.getParameter("motDePasse");
        UserManager uman = new UserManager();
        
        connected = uman.CheckUtilisateurConnexion(motDePasse, email);
		if(connected == true) {
	        userSession = request.getSession(true);
			userSession.setAttribute("email", email);
			request.setAttribute("userConnected", email);
		}else {
			deconnexion(request, response);
		}

	} 
	
	
	
	
	

}
