package beans;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class User {
	
	private int id;
	private String nom;
	private String prenom;
	private String genre;
	private String statut;
	private String tel;
	private String email;
	private Date dateNaissance;
	private String adresse;
	private String ville;
	private String codePostal;
	private float noteGlobale;
	private int nombreNotes;
	private String descriptionUtilisateur;
	private String identifiantUtilisateur;
	private  String motDePasseUtilisateur;
	private String pseudoUtilisateur;

	
	public User(String nom, String prenom, String genre, String statut, String tel, String email,
			Date dateNaissance, String adresse, String ville, String codePostal, float noteGlobale, int nombreNotes,
			String descriptionUtilisateur, String identifiantUtilisateur, String motDePasseUtilisateur,
			String pseudoUtilisateur) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.genre = genre;
		this.statut = statut;
		this.tel = tel;
		this.email = email;
		this.dateNaissance = dateNaissance;
		this.adresse = adresse;
		this.ville = ville;
		this.codePostal = codePostal;
		this.noteGlobale = noteGlobale;
		this.nombreNotes = nombreNotes;
		this.descriptionUtilisateur = descriptionUtilisateur;
		this.identifiantUtilisateur = identifiantUtilisateur;
		this.motDePasseUtilisateur = motDePasseUtilisateur;
		this.pseudoUtilisateur = pseudoUtilisateur;
	}
	
	
	
	public User() {
		super();
		
	}
	
	
	public User(String pseudo, String email2, String motDePasse) {
		
		this.email = email2;
		this.pseudoUtilisateur = pseudo;
		this.motDePasseUtilisateur = motDePasse;
		
		this.nom = " ";
		this.prenom = " ";
		this.genre = " ";
		this.statut = " ";
		this.tel = " ";

		Date temp = new Date (99999999);
		this.dateNaissance = temp;
		this.adresse = " ";
		this.ville = " ";
		this.codePostal = " ";
		this.noteGlobale = 0;
		this.nombreNotes = 0;
		this.descriptionUtilisateur = " ";
		this.identifiantUtilisateur = " ";
	}



	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public String getStatut() {
		return statut;
	}


	public void setStatut(String statut) {
		this.statut = statut;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Date getDateNaissance() {
		return dateNaissance;
	}
	
	public String getDateNaissance_fr() {
		SimpleDateFormat formater = null;
		formater = new SimpleDateFormat("dd/MM/yyyy");
		return formater.format(this.getDateNaissance());
	}
	
	/*public String getDateNaissance_us() {
		SimpleDateFormat formater = null;
		formater = new SimpleDateFormat("dd/MM/yyyy");
		return formater.format(this.getDateNaissance());
	}*/


	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}


	public String getAdresse() {
		return adresse;
	}


	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}


	public String getVille() {
		return ville;
	}


	public void setVille(String ville) {
		this.ville = ville;
	}


	public String getCodePostal() {
		return codePostal;
	}


	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}


	public float getNoteGlobale() {
		return noteGlobale;
	}


	public void setNoteGlobale(float noteGlobale) {
		this.noteGlobale = noteGlobale;
	}


	public String getDescriptionUtilisateur() {
		return descriptionUtilisateur;
	}


	public void setDescriptionUtilisateur(String descriptionUtilisateur) {
		this.descriptionUtilisateur = descriptionUtilisateur;
	}


	public String getIdentifiantUtilisateur() {
		return identifiantUtilisateur;
	}


	public void setIdentifiantUtilisateur(String identifiantUtilisateur) {
		this.identifiantUtilisateur = identifiantUtilisateur;
	}


	public String getMotDePasseUtilisateur() {
		return motDePasseUtilisateur;
	}


	public void setMotDePasseUtilisateur(String motDePasseUtilisateur) {
		this.motDePasseUtilisateur = motDePasseUtilisateur;
	}


	public String getPseudoUtilisateur() {
		return pseudoUtilisateur;
	}


	public void setPseudoUtilisateur(String pseudoUtilisateur) {
		this.pseudoUtilisateur = pseudoUtilisateur;
	}

	public int getNombreNotes() {
		return nombreNotes;
	}


	public void setNombreNotes(int nombreNotes) {
		this.nombreNotes = nombreNotes;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", genre=" + genre + ", statut=" + statut
				+ ", tel=" + tel + ", email=" + email + ", dateNaissance=" + dateNaissance + ", adresse=" + adresse
				+ ", ville=" + ville + ", codePostal=" + codePostal + ", noteGlobale=" + noteGlobale + ", nombreNotes="
				+ nombreNotes + ", descriptionUtilisateur=" + descriptionUtilisateur + ", identifiantUtilisateur="
				+ identifiantUtilisateur + ", pseudoUtilisateur=" + pseudoUtilisateur + "]";
	}


	
}


