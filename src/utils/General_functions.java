package utils;

public class General_functions {

	public General_functions() {
		// TODO Auto-generated constructor stub
	}
	
	public static boolean validationEmail( String email ){
	    if ( email != null && email.trim().length() != 0 ) {
	        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
	        	return false;
	        }
	    } else {
	        return false; 
	    }
	    
	    return true;
	}

}
