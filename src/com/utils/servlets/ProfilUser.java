package com.utils.servlets;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import manager.UserManager;
import beans.User;



@WebServlet("/ProfilUser")
public class ProfilUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ProfilUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//afficherInfoPerso(request, response);
		UserManager um = new UserManager();
		User user = (User) um.SelectInfoUtilisateur(2); //TODO récupérer l'id de la session en cours

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
		this.getServletContext().getRequestDispatcher("/vues/profil/profil.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("Le nom " + request.getParameter("nom"));
		modifierInfoPerso(request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("adresse"), 
				request.getParameter("ville"), request.getParameter("descriptionUtilisateur"));
	}
	
	//private void afficherInfoPerso(HttpServletRequest request, HttpServletResponse response) {}
	
	private void modifierInfoPerso(String nom, String prenom, String adresse, 
			String descriptionUtilisateur, String ville) {
		UserManager um = new UserManager();
		User user = (User) um.SelectInfoUtilisateur(2); //TODO récupérer l'id de la session en cours
		user.setNom(nom);
		user.setPrenom(prenom);
		user.setAdresse(adresse);
		user.setEmail(adresse);
		user.setVille(ville);
		//u.setDateNaissance(dateNaissance);
		user.setDescriptionUtilisateur(descriptionUtilisateur);
		
		um.UpdateInfoUtilisateur(2, user);
	}

}
