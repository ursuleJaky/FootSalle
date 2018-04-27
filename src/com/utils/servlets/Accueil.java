package com.utils.servlets;

import java.awt.Event;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Accueil")
public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String PAGE_INDEX = "/vues/index.jsp";
	public ArrayList <Event> events = new ArrayList<>();
//	public String heureCaste = new String();

    
    public Accueil() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("===================================== dans doGet ===============================");
		EventManager em = new EventManager() ;
		events = em.SelectInfoToutEvent();
		System.out.println("events");
		request.setAttribute("listeAnnonces", events);
//		events.get(index);
		System.out.println(events);
		this.getServletContext().getRequestDispatcher(PAGE_INDEX).forward(request, response);

	}

	/**
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EventManager em = new EventManager() ;
		ArrayList <Event> events = em.SelectInfoToutEvent() ; 
		request.setAttribute("listeAnnonces", events);
		
		doGet(request, response);
	}

}
