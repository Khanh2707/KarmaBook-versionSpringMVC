package model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "karma.image")
public class Image {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idImage;
	private String pathImage;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idType_Image")
	Type_Image type_image;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idBook")
	Book book;
	
	public Image() {	
	}

	public Image(String pathImage) {
		this.pathImage = pathImage;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Type_Image getType_image() {
		return type_image;
	}

	public void setType_image(Type_Image type_image) {
		this.type_image = type_image;
	}

	public int getIdImage() {
		return idImage;
	}

	public void setIdImage(int idImage) {
		this.idImage = idImage;
	}

	public String getPathImage() {
		return pathImage;
	}

	public void setPathImage(String pathImage) {
		this.pathImage = pathImage;
	}
	
	
}
