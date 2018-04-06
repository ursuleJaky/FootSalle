package test;

import manager.PersonneManager;
import utils.HibernateUtils;

public class Test_Main {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PersonneManager pm = new PersonneManager();

		pm.ajouterPersonne("xDDDDD", "Moh", "0600001021", "email1");
		HibernateUtils.sessionFactory.close();
	}
}
