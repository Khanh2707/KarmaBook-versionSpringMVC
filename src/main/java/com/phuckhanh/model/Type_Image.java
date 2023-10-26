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

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, 
		  property = "idType_Image")
@Entity(name = "karma.type_image")
public class Type_Image {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idType_Image;
	private String nameType_Image;
	private String describeType_Image;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "idType_Image")
	List<Image> images;
	
	public Type_Image() {
	}

	public Type_Image(String nameType_Image, String describeType_Image, List<Image> images) {
		this.nameType_Image = nameType_Image;
		this.describeType_Image = describeType_Image;
		this.images = images;
	}

	public int getIdType_Image() {
		return idType_Image;
	}

	public void setIdType_Image(int idType_Image) {
		this.idType_Image = idType_Image;
	}

	public String getNameType_Image() {
		return nameType_Image;
	}

	public void setNameType_Image(String nameType_Image) {
		this.nameType_Image = nameType_Image;
	}

	public String getDescribeType_Image() {
		return describeType_Image;
	}

	public void setDescribeType_Image(String describeType_Image) {
		this.describeType_Image = describeType_Image;
	}

	public List<Image> getImages() {
		return images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
	}
	
	
}
