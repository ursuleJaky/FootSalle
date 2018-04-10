package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ControlleurInscription")
public class ControlleurInscription extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public ControlleurInscription() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userlogin= request.getParameter("champLogin");
		String userPassword= request.getParameter("ChampPassword");
		if (userlogin == null) userlogin = "";
		if (userPassword == null) userPassword = "";
		System.out.println(userlogin+ " _ " + userPassword);
		
		HttpSession userSession = request.getSession(true);
		userSession.setAttribute("champPassword", userlogin);
		userSession.setAttribute("champPassword", userPassword);
		
		request.getRequestDispatcher("/Authentification.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String userlogin= request.getParameter("champLogin");
		String userPassword= request.getParameter("champPassword");
		
		HttpSession userSession = request.getSession(true);
		userSession.setAttribute("champLogin", userlogin);
		userSession.setAttribute("champPassword", userPassword);
		
		if(userlogin.equals("davy") && userPassword.equals("ananas")) {
			request.getRequestDispatcher("/Connected.jsp").forward(request, response);
			userSession.setAttribute("isConnected", true);
			
		}else {
			userSession.setAttribute("isConnected", false);
			doGet(request, response);
		}
	}
	
}


