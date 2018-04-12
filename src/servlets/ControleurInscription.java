package servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.mapping.Map;

import beans.User;
import manager.UserManager;

/**
 * Servlet implementation class ControleurInscription
 */
@WebServlet("/ControleurInscription")
public class ControleurInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	public static final String VUE = "/vues/inscription.jsp" ; //"/WEB-INF/inscription.jsp"
		    public static final String CHAMP_NOM = "nom";
			public static final String CHAMP_PRENOM = "prenom";
			public static final String CHAMP_DATE_NAISSANCE = "dateNaissance";
			public static final String CHAMP_EMAIL = "email";
			public static final String CHAMP_CONFIRMATION_EMAIL = "confirmerEmail";
			public static final String CHAMP_SEXE = "sexe";
		    public static final String CHAMP_MOT_DE_PASSE = "motDePasse";
		    public static final String CHAMP_CONFIRMATION_MOT_DE_PASSE = "confirmationMotDePasse";
		    public static final String CHAMP_TELEPHONE = "telephone";
			

    /**
     * Default constructor. 
     */
    public ControleurInscription() {
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dans le doGet");
		
		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("dans le doPost");
		
		String resultat;
//		Map<String, String> erreurs = new HashMap<>();
		
        /* Récupération des champs du formulaire. */
		String nom = request.getParameter( CHAMP_NOM );
        String prenom = request.getParameter( CHAMP_PRENOM );
        String dateNaissance = request.getParameter( CHAMP_DATE_NAISSANCE );
        String email = request.getParameter( CHAMP_EMAIL );
        String confirmerEmail = request.getParameter( CHAMP_CONFIRMATION_EMAIL );
        String sexe = request.getParameter( CHAMP_SEXE );
        String motDePasse = request.getParameter( CHAMP_MOT_DE_PASSE );
        String confirmationMotDePasse = request.getParameter( CHAMP_CONFIRMATION_MOT_DE_PASSE );
        String telephone = request.getParameter( CHAMP_TELEPHONE );
        
        
  
   
        Date dt = new Date(01,01,1994);


       /* Transmission de la paire d'objets request/response à notre JSP */
       this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );      
       User us = new User(nom, prenom, sexe, " ", telephone, email, dt,
       		" ", " ", " ", 888888.7F, 9, " ", " ", motDePasse, email);
        
        //inscrireUser(us);
        
        System.out.println(us.toString());

        
		doGet(request, response);
	
	
	
//	/* Validation du champ email. */
//    try {
//        validationEmail( email );
//    } catch ( Exception e ) {
//        erreurs.put( CHAMP_EMAIL, e.getMessage() );
//    }
	
	
//	/* Validation des champs mot de passe et confirmation. */
//    try {
//        validationMotsDePasse( motDePasse, confirmation );
//    } catch ( Exception e ) {
//        erreurs.put( CHAMP_MOT_DE_PASSE, e.getMessage() );
//    }
}


	
	
	/**
	 * Valide l'adresse mail saisie.
	 */
	private void validationEmail( String email ) throws Exception {
	    if ( email != null && email.trim().length() != 0 ) {
	        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
	            throw new Exception( "Merci de saisir une adresse mail valide." );
	        }
	    } else {
	        throw new Exception( "Merci de saisir une adresse mail." );
	    }

}
	
	/**
	 * Valide les mots de passe saisis.
	 */
	private void validationMotsDePasse( String motDePasse, String confirmation ) throws Exception{
	    if (motDePasse != null && motDePasse.trim().length() != 0 && confirmation != null && confirmation.trim().length() != 0) {
	        if (!motDePasse.equals(confirmation)) {
	            throw new Exception("Les mots de passe entrés sont différents, merci de les saisir à nouveau.");
	        } else if (motDePasse.trim().length() < 3) {
	            throw new Exception("Les mots de passe doivent contenir au moins 3 caractères.");
	        }
	    } else {
	        throw new Exception("Merci de saisir et confirmer votre mot de passe.");
	    }

}
	
	/**
	 * Valide le nom d'utilisateur saisi.
	 */
	private void validationNom( String nom ) throws Exception {
	    if ( nom != null && nom.trim().length() < 3 ) {
	        throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caractères." );
	    }
	}
	
	
	public void inscrireUser (User u) {
		UserManager um = new UserManager();
		um.ajouterUtilisateur(u);
	}
	
	public void nousRejoindre() {
		
	}

}


