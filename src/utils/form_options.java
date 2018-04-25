package utils;

import java.util.HashMap;
import java.util.Map;

public class form_options {

	public form_options() {
		// TODO Auto-generated constructor stub
	}
	
	//Option civilité
	public static Map<String, String> civilite() {
		Map<String, String> civilite = new HashMap<String, String>();
		civilite.put("F", "Madame");
		civilite.put("M", "Monsieur");
		return civilite;
	}
	
}
