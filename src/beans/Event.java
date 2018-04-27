package beans;
import manager.EventManager;
import java.sql.Date;

public class Event {

	private int id;
	private String activite;
	private Date dateCreationEvenement;
	private Date dateDebutEvenement;
	private Date dateFinEvenement;
	private String localisationEvenement;
	private String adresseEvenement;
	private String ville;
	private String codePostal;
	private String pays;
	private boolean complet;
	private int nbPersonneVoulu;
	private int nbPersonneInscrite;
	private String participants;
	private String description;
	private int idCreateurEvenement;
	private float prixEvent;
	
	
	
	
	public Event() {
		super();
	}
	
	public Event(String ville, String activite, Date dateDebutEvenement,
			String localisationEvenement, int nbPersonneVoulu, int nbPersonneInscrite,
			int idCreateurEvenement, float prix) {
	
		super();
		EventManager em = new EventManager();
		this.activite = activite;
		Date temp = new Date (99999999);
		this.dateCreationEvenement = em.dateDuJour();
		this.dateDebutEvenement = dateDebutEvenement;
		this.dateFinEvenement = temp;
		this.localisationEvenement = localisationEvenement;
		this.adresseEvenement = " ";
		this.ville = ville;
		this.codePostal =  " ";
		this.pays =  " ";
		this.complet = false;
		this.nbPersonneVoulu = nbPersonneVoulu;
		this.nbPersonneInscrite = nbPersonneInscrite;
		this.idCreateurEvenement = idCreateurEvenement;
		this.prixEvent = prix;
	}

	public Event(String activite, Date dateCreationEvenement, Date dateDebutEvenement, Date dateFinEvenement,
			String localisationEvenement, String adresseEvenement, String ville, String codePostal, String pays,
			boolean complet, int nbPersonneVoulu, int nbPersonneInscrite, String participants, String description,
			int idCreateurEvenement, float prix) {
		super();
		this.activite = activite;
		this.dateCreationEvenement = dateCreationEvenement;
		this.dateDebutEvenement = dateDebutEvenement;
		this.dateFinEvenement = dateFinEvenement;
		this.localisationEvenement = localisationEvenement;
		this.adresseEvenement = adresseEvenement;
		this.ville = ville;
		this.codePostal = codePostal;
		this.pays = pays;
		this.complet = complet;
		this.nbPersonneVoulu = nbPersonneVoulu;
		this.nbPersonneInscrite = nbPersonneInscrite;
		this.participants = participants;
		this.description = description;
		this.idCreateurEvenement = idCreateurEvenement;
		this.prixEvent = prix;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getActivite() {
		return activite;
	}


	public void setActivite(String activite) {
		this.activite = activite;
	}


	public Date getDateCreationEvenement() {
		return dateCreationEvenement;
	}


	public void setDateCreationEvenement(Date dateCreationEvenement) {
		this.dateCreationEvenement = dateCreationEvenement;
	}


	public Date getDateDebutEvenement() {
		return dateDebutEvenement;
	}


	public void setDateDebutEvenement(Date dateDebutEvenement) {
		this.dateDebutEvenement = dateDebutEvenement;
	}


	public Date getDateFinEvenement() {
		return dateFinEvenement;
	}


	public void setDateFinEvenement(Date dateFinEvenement) {
		this.dateFinEvenement = dateFinEvenement;
	}


	public String getLocalisationEvenement() {
		return localisationEvenement;
	}


	public void setLocalisationEvenement(String localisationEvenement) {
		this.localisationEvenement = localisationEvenement;
	}


	public String getAdresseEvenement() {
		return adresseEvenement;
	}


	public void setAdresseEvenement(String adresseEvenement) {
		this.adresseEvenement = adresseEvenement;
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


	public String getPays() {
		return pays;
	}


	public void setPays(String pays) {
		this.pays = pays;
	}


	public boolean getComplet() {
		return complet;
	}


	public void setComplet(boolean complet) {
		this.complet = complet;
	}


	public int getNbPersonneVoulu() {
		return nbPersonneVoulu;
	}


	public void setNbPersonneVoulu(int nbPersonneVoulu) {
		this.nbPersonneVoulu = nbPersonneVoulu;
	}


	public int getNbPersonneInscrite() {
		return nbPersonneInscrite;
	}


	public void setNbPersonneInscrite(int nbPersonneInscrite) {
		this.nbPersonneInscrite = nbPersonneInscrite;
	}


	public String getParticipants() {
		return participants;
	}


	public void setParticipants(String participants) {
		this.participants = participants;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int getIdCreateurEvenement() {
		return idCreateurEvenement;
	}


	public void setIdCreateurEvenement(int idCreateurEvenement) {
		this.idCreateurEvenement = idCreateurEvenement;
	}
	
	public float getPrixEvent() {
		return prixEvent;
	}

	public void setPrixEvent(float prixEvent) {
		this.prixEvent = prixEvent;
	}


	@Override
	public String toString() {
		return "Event [id=" + id + ", activite=" + activite.trim() + ", dateCreationEvenement=" + dateCreationEvenement
				+ ", dateDebutEvenement=" + dateDebutEvenement + ", dateFinEvenement=" + dateFinEvenement
				+ ", localisationEvenement=" + localisationEvenement.trim() + ", adresseEvenement=" + adresseEvenement.trim()
				+ ", ville=" + ville.trim() + ", codePostal=" + codePostal.trim() + ", pays=" + pays.trim() + ", complet=" + complet
				+ ", nbPersonneVoulu=" + nbPersonneVoulu + ", nbPersonneInscrite=" + nbPersonneInscrite
				+ ", participants=" + participants.trim() + ", description=" + description.trim() + ", idCreateurEvenement="
				+ idCreateurEvenement + ", "+ prixEvent + "]";
	}
}