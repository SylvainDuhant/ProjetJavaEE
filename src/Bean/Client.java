package Bean;

import java.io.Serializable;
import java.util.Date;

public class Client extends Utilisateur implements Serializable{
	private static final long serialVersionUID = 1L;
	private Panier panier;

	public Client() {

	}

	public Client(int id, String nom, String prenom, Date dateNaissance, String telephone, String email,
			String password, String nomImage, Panier panier) {
		super(id, nom, prenom, dateNaissance, telephone, email, password, nomImage);
		this.panier = panier;
	}

	public Client(String nom, String prenom, Date dateNaissance, String telephone, String email, String password,
			String nomImage, Panier panier) {
		super(nom, prenom, dateNaissance, telephone, email, password, nomImage);
		this.panier = panier;
	}

	public Panier getPanier() {
		return panier;
	}

	public void setPanier(Panier panier) {
		this.panier = panier;
	}

}
