package test;

import beans.User;
import manager.UserManager;
import utils.HibernateUtils;
public class Test_Main_User {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/* Date de naissance � passer par une variable */
		Date dt= new Date(01,01,1900);
		
		/* construction de l'objet � faire par variables*/
		User p = new User("toto","titi","M","complete","0630733636","ruru@gmail.com",dt,"rue uhbhbhb","bygygygygygdcdcd","64000",5,5,"je suis fort  aux jeux video genre FPS courses etc! TROP FORT QUOI LE MEILLEUR. Plus fort que Etienne Diouf sur tekken qui prend des perfects avec des filles.", "ruben12","1234","Rubencito");
		
		User p1 = new User("toto","tata","M","complete","000000000","ruru@gmail.com",dt,"rue uhbhbhb","bygygygygygdcdcd","64000",5,5,"je suis fort  aux jeux video genre FPS courses etc! TROP FORT QUOI LE MEILLEUR. Plus fort que Etienne Diouf sur tekken qui prend des perfects avec des filles.", "ruben12","1234","Rubencito");

		/* Impl�mentation de la classe Usermanager*/
		UserManager pm = new UserManager();
		pm.ajouterUtilisateur(p);
		
		/* id � passer en varibale - R�cup�rer les infos du User avec les getters de la classe User*/
		pm.SelectInfoUtilisateur(6);
		//pm.SelectInfoUtilisateur(6).getPrenom();
		
		pm.UpdateInfoUtilisateur(101, p1);
		HibernateUtils.sessionFactory.close();
		
		
	}

}
