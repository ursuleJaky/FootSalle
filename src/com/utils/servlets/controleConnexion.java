package com.utils.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import manager.UserManager;


@WebServlet("/controleConnexion")
public class controleConnexion extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
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
		if(request.getParameter("connect") == "OK") {
			System.out.println("doPost connect == " + request.getParameter("connect"));
			connexion(request, response);
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
