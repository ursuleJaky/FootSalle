package com.utils.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Event;
import manager.EventManager;

@WebServlet("/Accueil")
public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Accueil() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EventManager em = new EventManager() ;
		ArrayList <Event> events = em.SelectInfoToutEvent() ;
		request.setAttribute("listeAnnonces", events);
		for(int i = 0; i< events.size(); i++) {
			System.out.println("Evenements " +i);
		}
		request.getRequestDispatcher("/vues/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		EventManager em = new EventManager() ;
		ArrayList <Event> events = em.SelectInfoToutEvent() ;
		for(int i = 0; i< events.size(); i++) {
			System.out.println("Evenements " +i);
		}
		
		request.setAttribute("listeAnnonces", events);
		doGet(request, response);
	}

}