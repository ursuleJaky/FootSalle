package test;

import beans.Personne;
import manager.PersonneManager;
import utils.HibernateUtils;

public class Test_Main {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PersonneManager pm = new PersonneManager();

		Personne p = new Personne ();
		p.setNom("Zeineb");
		p.setPrenom("MEDCH");
		p.setEmail("tunis.fr");
		p.setTel("06");
		
		pm.ajouterPersonne(p);
	
	}
}
