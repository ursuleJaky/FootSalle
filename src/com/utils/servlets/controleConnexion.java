package com.utils.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import manager.UserManager;

/**
 * Servlet implementation class controleConnexion
 */
@WebServlet("/controleConnexion")
public class controleConnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String VUE = "/vues/connexion.jsp";
	public static final String PAGE_ACCUEIL = "/vues/profil/AccueilTemp.jsp";
    public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_MOT_DE_PASSE = "motDePasse";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controleConnexion() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String email = request.getParameter( CHAMP_EMAIL );
//        String motDePasse = request.getParameter( CHAMP_MOT_DE_PASSE );
//        
//        if (email == null) email = "";
//		if (motDePasse == null) motDePasse = "";
//		System.out.println(email+ " _ " + motDePasse);
//        
//		HttpSession userSession = request.getSession(true);
//		userSession.setAttribute("champPassword", email);
//		userSession.setAttribute("champPassword", motDePasse);
		
		request.getRequestDispatcher( VUE).forward(request, response);
		
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter( CHAMP_EMAIL );
		try {
			validationEmail(email);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        String motDePasse = request.getParameter( CHAMP_MOT_DE_PASSE );
        System.out.println("==========================================================================================");
        System.out.println(email + " " + motDePasse);
        UserManager uman = new UserManager();
        boolean connected =  false;
        connected = uman.CheckUtilisateurConnexion(motDePasse, email);
        if(connected == false) {
        	System.out.println("Utilisateur pas trouvé");
        }else {
        	System.out.println("utilisateur trouvé");
        	}
        
		if(connected== true) {
        HttpSession userSession = request.getSession(true);
		userSession.setAttribute("email", email);
		System.out.println("session ouverte");
		request.getRequestDispatcher(PAGE_ACCUEIL).forward(request, response);
		
		}else {
        
			doGet(request, response);
		}

	} 
	
	private void validationEmail( String email ) throws Exception {
	    if ( email != null && email.trim().length() != 0 ) {
	        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
	            throw new Exception( "Merci de saisir une adresse mail valide." );
	        }
	    } else {
	        throw new Exception( "Merci de saisir une adresse mail." );
	    }
	}

}
