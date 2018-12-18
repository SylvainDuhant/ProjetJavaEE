package Bean;

import java.util.Date;

public class Vendeur extends Utilisateur {

	private Article article;

	public Vendeur() {

	}

	public Vendeur(int id, String nom, String prenom, Date dateNaissance, String telephone, String email,
			String password, String nomImage, Article article) {
		super(id, nom, prenom, dateNaissance, telephone, email, password, nomImage);
		this.article = article;
	}

	public Vendeur(String nom, String prenom, Date dateNaissance, String telephone, String email, String password,
			String nomImage, Article article) {
		super(nom, prenom, dateNaissance, telephone, email, password, nomImage);
		this.article = article;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

}
