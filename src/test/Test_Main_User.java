package test;

import manager.UserManager;
import utils.HibernateUtils;
import java.sql.Date;
import beans.User;
public class Test_Main_User {

	public static void main(String[] args) {
		
		Date dt= new Date(20140101);
		
		/* Création des utilisateurs*/		
		User p = new User("toto","titi","M","complete","0630733636","ruru@gmail.com",dt,"rue uhbhbhb","bygygygygygdcdcd","64000",5,5,"je suis fort  aux jeux video genre FPS courses etc! TROP FORT QUOI LE MEILLEUR. Plus fort que Etienne Diouf sur tekken qui prend des perfects avec des filles.", "ruben12","1234","Rubencito");
		
		User p1 = new User("toto","tata","M","complete","000000000","ruru@gmail.com",dt,"rue uhbhbhb","bygygygygygdcdcd","64000",5,5,"je suis fort  aux jeux video genre FPS courses etc! TROP FORT QUOI LE MEILLEUR. Plus fort que Etienne Diouf sur tekken qui prend des perfects avec des filles.", "ruben12","1234","Rubencito");

	
		UserManager pm = new UserManager();
		pm.ajouterUtilisateur(p);
		
		pm.SelectInfoUtilisateur(1);
		
		pm.UpdateInfoUtilisateur(1, p1);
		HibernateUtils.sessionFactory.close();
		
		
	}

}
