package test;

import manager.UserManager;
import utils.HibernateUtils;
import java.sql.Date;
import beans.User;
public class Test_Main_User {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/* Date de naissance à passer par une variable */
		Date dt= new Date(01,01,1900);
		
		/* construction de l'objet à faire par variables*/
		User p = new User("toto","titi","M","complete","0630733636","ruru@gmail.com",dt,"rue uhbhbhb","bygygygygygdcdcd","64000",5,5,"je suis fort  aux jeux video genre FPS courses etc! TROP FORT QUOI LE MEILLEUR. Plus fort que Etienne Diouf sur tekken qui prend des perfects avec des filles.", "ruben12","1234","Rubencito");
		
		User p1 = new User("toto","tata","M","complete","000000000","ruru@gmail.com",dt,"rue uhbhbhb","bygygygygygdcdcd","64000",5,5,"je suis fort  aux jeux video genre FPS courses etc! TROP FORT QUOI LE MEILLEUR. Plus fort que Etienne Diouf sur tekken qui prend des perfects avec des filles.", "ruben12","1234","Rubencito");

		/* Implémentation de la classe Usermanager*/
		UserManager pm = new UserManager();
		pm.ajouterUtilisateur(p);
		
		/* id à passer en varibale - Récupérer les infos du User avec les getters de la classe User*/
		pm.SelectInfoUtilisateur(1);
		//pm.SelectInfoUtilisateur(6).getPrenom();
		
		pm.UpdateInfoUtilisateur(1, p1);
		HibernateUtils.sessionFactory.close();
		
		
	}

}
