package servlets;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;
import manager.UserManager;

@WebServlet("/ProfilUser.java")
public class ProfilUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public ProfilUser() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = (Date) sdf.parse("2015-05-26");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		
		UserManager pm = new UserManager();
		User u = pm.SelectInfoUtilisateur(6);
		
		response.setContentType( "text/html" );
		
		request.setAttribute("user", u);
		String a= " username";
		request.setAttribute("name", a);
		String message = "Transmission de variables : OK !";
		request.setAttribute( "test", message );
		System.out.println("nom : " + u.getNom());
		
		request.getRequestDispatcher("/vues/NewFile.jsp").forward(request, response);
		
		//RequestDispatcher rd= request.getRequestDispatcher("/vues/NewFile.jsp");
		//rd.forward(request, response);    
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
