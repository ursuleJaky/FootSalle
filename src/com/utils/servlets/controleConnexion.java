package com.utils.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;

import manager.UserManager;


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
		System.out.println("I am in the doPost");
		if("OK".equals(request.getParameter("connect"))) {
			request.setAttribute("disconnect", "KO");
			System.out.println("doPost connect == " + request.getParameter("connect"));
			connexion(request, response);
		} else if ("OK".equals(request.getParameter("disconnect"))) {
			request.setAttribute("connect", "KO");
			System.out.println("doPost disconnect == " + request.getParameter("disconnect"));
			deconnexion(request, response);
		}else {
			System.out.println("doPost disconnect == " + request.getParameter("disconnect") + " connect == " + request.getParameter("connect"));
			doGet(request, response);
		}
			
		//request.getRequestDispatcher("/vues/index.jsp").forward(request, response);
	}
	
	private void deconnexion(HttpServletRequest request, HttpServletResponse response) throws IOException {
		userSession = request.getSession(true);
		System.out.println("I am in deconnexion "+userSession.getAttribute("email"));
		
		userSession.removeAttribute("email");
		System.out.println(userSession.getAttribute("email"));
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
			userSession.setAttribute("email", "it's me");
			JSONArray rep = new JSONArray();
			rep.put(email);
			rep.put("connected");
			response.getWriter().write(rep.toString());
		}
	}

}
