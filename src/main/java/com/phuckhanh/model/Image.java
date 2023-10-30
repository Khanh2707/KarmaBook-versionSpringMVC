package com.phuckhanh.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"book"})
@Entity(name = "karma.image")
public class Image {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idImage;
	private String pathImage;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idType_Image")
	private Type_Image type_image;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idBook")
	private Book book;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idVersionI")
	private Version version;
	
	public Image() {	
	}

	public Image(String pathImage) {
		this.pathImage = pathImage;
	}

	public Version getVersion() {
		return version;
	}

	public void setVersion(Version version) {
		this.version = version;
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
