package com.phuckhanh.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"images", "book_version"})
@Entity(name = "karma.version")
public class Version {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idVersion;
	private String nameVersion;
	
	@OneToMany(mappedBy = "version", cascade = CascadeType.ALL)
	private List<Image> images;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
	private List<Book_Version> book_version;
	
	public List<Book_Version> getBook_version() {
		return book_version;
	}

	public void setBook_version(List<Book_Version> book_version) {
		this.book_version = book_version;
	}

	public Version() {
	}

	public Version(String nameVersion) {
		this.nameVersion = nameVersion;
	}

	public List<Image> getImages() {
		return images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
	}

	public int getIdVersion() {
		return idVersion;
	}

	public void setIdVersion(int idVersion) {
		this.idVersion = idVersion;
	}

	public String getNameVersion() {
		return nameVersion;
	}

	public void setNameVersion(String nameVersion) {
		this.nameVersion = nameVersion;
	}
	
	
}
