package servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;

@WebServlet("/Controller")
public class ProfilUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public ProfilUser() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//User user = new User();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = (Date) sdf.parse("2015-05-26");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//String date=sdf.format(c);
		//System.out.println(date);
		ArrayList<User> liste = new ArrayList<>();
		String nom = "Mamadou";
		String prenom = "Konaté";
		String genre = "M";
		String statut = "complete";
		String tel = "0630733636";
		String email = "ruru@gmail.com";
		Date dateNaissance = date;
		String adresse = "rue mon du Hâ";
		String ville = "haricot"; 
		String codePostal = "64000"; 
		float noteGlobale = 5;
		int nombreNotes = 4;
		String descriptionUtilisateur = "blablabla";
		String identifiantUtilisateur = "ruben12";
		String motDePasseUtilisateur = "1234";
		String pseudoUtilisateur = "Rubencito";
		
		String nom1 = "orion";
		String prenom1 = "Regean";
		User user1 = new User( nom, prenom, genre, statut, tel, email, dateNaissance, adresse, ville, codePostal, noteGlobale,
	    nombreNotes, descriptionUtilisateur ,identifiantUtilisateur ,motDePasseUtilisateur , pseudoUtilisateur);
		User user2 = new User(nom1, prenom1, genre, statut, tel, email, dateNaissance, adresse, ville, codePostal, noteGlobale,
			    nombreNotes, descriptionUtilisateur ,identifiantUtilisateur ,motDePasseUtilisateur , pseudoUtilisateur);
		
		liste.add(user1);
		liste.add(user2);
		request.setAttribute("ville", ville);
		request.setAttribute("variable", liste);
		request.getRequestDispatcher("/NewFile.jsp").forward(request, response);
	}
	
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
	//}

}
