package com.utils.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;
import manager.UserManager;



@WebServlet("/ProfilUser")
public class ProfilUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ProfilUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//afficherInfoPerso(request, response);
		UserManager um = new UserManager();
		User user = (User) um.SelectInfoUtilisateur(2); //TODO recuperer l'id de la session en cours en dur pour l'instant

		System.out.println(user.toString());
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
		//doGet(request, response);
		modifierInfoPerso(request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("adresse"), 
				request.getParameter("ville"), request.getParameter("a_propos"));
		response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write("OK");
	}
	
	//private void afficherInfoPerso(HttpServletRequest request, HttpServletResponse response) {}
	
	private void modifierInfoPerso(String nom, String prenom, String adresse, 
			String ville, String descriptionUtilisateur) {
		UserManager um = new UserManager();

		User user = (User) um.SelectInfoUtilisateur(2); //TODO recuperer l'id de la session en cours en dur pour l'instant
		user.setNom(nom);
		user.setPrenom(prenom);
		user.setAdresse(adresse);
		user.setEmail(adresse);
		user.setVille(ville);
		//u.setDateNaissance(dateNaissance);  // Pas encore gerer dans la modification
		user.setDescriptionUtilisateur(descriptionUtilisateur);
		um.UpdateInfoUtilisateur(1, user); //TODO récupérer l'id de la session en cours
	}
	

}
