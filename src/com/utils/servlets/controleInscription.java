package com.utils.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;
import manager.UserManager;

/**
 * Servlet implementation class controleInscription
 */
@WebServlet("/controleInscription")
public class controleInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String VUE = "/vues/connexion.jsp";  //"/WEB-INF/inscription.jsp"
	public static final String PAGE_ACCUEIL = "/vues/profil/AccueilTemp.jsp";

		    public static final String CHAMP_NOM = "nom";
		    public static final String CHAMP_EMAIL = "email";
		    public static final String PSEUDO = "inscription_pseudo";
		    public static final String CHAMP_MOT_DE_PASSE = "motDePasse";
		    
			//public static final String CHAMP_PRENOM = "prenom";
			//public static final String CHAMP_DATE_NAISSANCE = "dateNaissance";
			//public static final String CHAMP_CONFIRMATION_EMAIL = "confirmerEmail";
			//public static final String CHAMP_SEXE = "sexe";
		    //public static final String CHAMP_CONFIRMATION_MOT_DE_PASSE = "confirmationMotDePasse";
		    //public static final String CHAMP_TELEPHONE = "telephone";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controleInscription() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

    
		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String email = request.getParameter( CHAMP_EMAIL );
        String motDePasse = request.getParameter( CHAMP_MOT_DE_PASSE );
        String pseudo = request.getParameter( PSEUDO );
        
        User u = new User(pseudo, email, motDePasse);
        
        UserManager um = new UserManager();
        um.ajouterUtilisateur(u);
        
        System.out.println("Vous etes inscris !");
        

		this.getServletContext().getRequestDispatcher( PAGE_ACCUEIL ).forward( request, response );

		//doGet(request, response);
	}

}
