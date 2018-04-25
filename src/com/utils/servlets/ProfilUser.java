package com.utils.servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;
import manager.UserManager;
import utils.form_options;



@WebServlet("/ProfilUser")
public class ProfilUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ProfilUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Récupérer les info de l'utilisateur
		//-- Instantiation du model
		UserManager um = new UserManager();
		
		//-- Récupérer les informations du user pour les transmettre à la vue
		User user = (User) um.SelectInfoUtilisateur(Integer.parseInt(request.getParameter("user_id")));
		request.setAttribute("nom", ((beans.User) user).getNom());
		request.setAttribute("prenom", ((beans.User) user).getPrenom());
		request.setAttribute("motDePasseUtilisateur", ((beans.User) user).getMotDePasseUtilisateur());
		request.setAttribute("ville", ((beans.User) user).getVille());
		request.setAttribute("statut", ((beans.User) user).getStatut());
		request.setAttribute("genre", ((beans.User) user).getGenre());
		request.setAttribute("tel", ((beans.User) user).getTel());
		request.setAttribute("email", ((beans.User) user).getEmail());
		request.setAttribute("dateNaissance", ((beans.User) user).getDateNaissance().toString());
		request.setAttribute("adresse", ((beans.User) user).getAdresse());
		request.setAttribute("codePostal", ((beans.User) user).getCodePostal());
		request.setAttribute("noteGlobale", ((beans.User) user).getNoteGlobale());
		request.setAttribute("identifiantUtilisateur", ((beans.User) user).getIdentifiantUtilisateur());
		request.setAttribute("descriptionUtilisateur", ((beans.User) user).getDescriptionUtilisateur());
		request.setAttribute("pseudoUtilisateur", ((beans.User) user).getPseudoUtilisateur());
		request.setAttribute("nombreNotes", ((beans.User) user).getNombreNotes());
		
		//Set form options
		request.setAttribute("options_civilite", (HashMap<String, String>) form_options.civilite());
	
		//Set page title
		request.setAttribute("page_title", "Profil de "+((beans.User) user).getNom()+" "+((beans.User) user).getPrenom());
		
		this.getServletContext().getRequestDispatcher("/vues/profil/profil.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Récupérer l'id de l'utilisateur via la variable de session
		modifierInfoPerso(
				request.getParameter("civilite"), 
				request.getParameter("nom"), 
				request.getParameter("prenom"), 
				request.getParameter("adresse"), 
				request.getParameter("ville"), 
				request.getParameter("a_propos")
		);	    
		//Réponse retournée
	    response.getWriter().write("ok");
	}
	
	//private void afficherInfoPerso(HttpServletRequest request, HttpServletResponse response) {}
	
	private void modifierInfoPerso(String genre, String nom, String prenom, String adresse, 
		String ville, String descriptionUtilisateur) {
		UserManager um = new UserManager();
		
		User user = (User) um.SelectInfoUtilisateur(2); //TODO recuperer l'id de la session en cours en dur pour l'instant
		user.setGenre(genre);
		user.setNom(nom);
		user.setPrenom(prenom);
		user.setAdresse(adresse);
		user.setEmail(adresse);
		user.setVille(ville);
		//u.setDateNaissance(dateNaissance);  // Pas encore gerer dans la modification
		user.setDescriptionUtilisateur(descriptionUtilisateur.replaceAll("\\s+",""));
		um.UpdateInfoUtilisateur(2, user); //TODO r�cup�rer l'id de la session en cours
	}
	

}
