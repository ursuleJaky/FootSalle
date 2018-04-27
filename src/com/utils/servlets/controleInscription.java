package com.utils.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;
import manager.UserManager;


@WebServlet("/controleInscription")
public class controleInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String VUE = "/vues/connexion.jsp"; 
	public static final String PAGE_ACCUEIL = "/vues/profil/AccueilTemp.jsp";
		    
			//public static final String CHAMP_PRENOM = "prenom";
			//public static final String CHAMP_DATE_NAISSANCE = "dateNaissance";
			//public static final String CHAMP_CONFIRMATION_EMAIL = "confirmerEmail";
			//public static final String CHAMP_SEXE = "sexe";
		    //public static final String CHAMP_CONFIRMATION_MOT_DE_PASSE = "confirmationMotDePasse";
		    //public static final String CHAMP_TELEPHONE = "telephone";

    public static final String CHAMP_NOM = "nom";
    public static final String CHAMP_EMAIL = "email";
    public static final String PSEUDO = "inscription_pseudo";
    public static final String CHAMP_MOT_DE_PASSE = "motDePasse";
		    
    public controleInscription() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Récuperation du HTTP Post
	    String email = request.getParameter( CHAMP_EMAIL );
        String motDePasse = request.getParameter( CHAMP_MOT_DE_PASSE );
        String pseudo = request.getParameter( PSEUDO );
        
        //Création du model User
        UserManager um = new UserManager();
        
        //--Check E-mail & pseudo
        if(!um.CheckEmailPseudoUserExistence(email, pseudo)) {
        	//--Ajout de l'utilisateur
            um.ajouterUtilisateur(new User(pseudo, email, motDePasse));
            //--Set la notification utilisateur (success)
        	request.setAttribute("message_user", "enabled");
    		request.setAttribute("message_user_bg_color", "bg-success");
    		request.setAttribute("message_user_titre", "Inscription");
    		request.setAttribute("message_user_contenu", "Inscription terminée ...");
        }else {
            //--Set la notification utilisateur (erreur)
        	request.setAttribute("message_user", "enabled");
    		request.setAttribute("message_user_bg_color", "bg-danger");
    		request.setAttribute("message_user_titre", "Inscription");
    		request.setAttribute("message_user_contenu", "Erreur lors de l'inscription: email ou pseudo existant");
        }
		this.getServletContext().getRequestDispatcher( PAGE_ACCUEIL ).forward( request, response );

		//doGet(request, response);
	}
}
