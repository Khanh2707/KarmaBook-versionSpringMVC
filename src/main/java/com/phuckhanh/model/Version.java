package com.phuckhanh.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity(name = "karma.version")
public class Version {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idVersion;
	private String nameVersion;
	
	@JsonIgnore
	@OneToMany(mappedBy = "version", cascade = CascadeType.ALL)
	@LazyCollection(value = LazyCollectionOption.FALSE)
	List<Image> images;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
	@LazyCollection(value = LazyCollectionOption.FALSE)
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
