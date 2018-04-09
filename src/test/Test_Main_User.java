package test;

import manager.UserManager;
import utils.HibernateUtils;

import java.sql.Date;

import beans.User;
public class Test_Main_User {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Date dt= new Date(01,01,1900);
		User p = new User("Torney","Ruben","M","complete","0630733636","ruru@gmail.com",dt,"rue mon cul","mes fesse","64000",5,5,"je suis fort  aux jeux video genre FPS courses etc! TROP FORT QUOI LE MEILLEUR. Plus fort que Etienne Diouf sur tekken qui prend des perfects avec des filles.", "ruben12","1234","Rubencito");
		UserManager pm = new UserManager();
		pm.ajouterUtilisateur(p);
		HibernateUtils.sessionFactory.close();
	}

}
