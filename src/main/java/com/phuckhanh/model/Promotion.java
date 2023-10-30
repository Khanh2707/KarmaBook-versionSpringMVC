package com.phuckhanh.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"books"})
@Entity(name = "karma.promotion")
public class Promotion {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idPromotion;
	private String namePromotion;
	private String startTimePromotion;
	private String endTimePromotion;
	private short discountPromotion;
	private String describePromotion;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "karma.both_book_promotion",
	joinColumns = {@JoinColumn(name = "idPromotion", referencedColumnName = "idPromotion")},
	inverseJoinColumns = {@JoinColumn(name = "idBookP", referencedColumnName = "idBook")})
	List<Book> books;
	
	public Promotion() {
	}

	public Promotion(String namePromotion, String startTimePromotion, String endTimePromotion, short discountPromotion,
			String describePromotion) {
		this.namePromotion = namePromotion;
		this.startTimePromotion = startTimePromotion;
		this.endTimePromotion = endTimePromotion;
		this.discountPromotion = discountPromotion;
		this.describePromotion = describePromotion;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public int getIdPromotion() {
		return idPromotion;
	}

	public void setIdPromotion(int idPromotion) {
		this.idPromotion = idPromotion;
	}

	public String getNamePromotion() {
		return namePromotion;
	}

	public void setNamePromotion(String namePromotion) {
		this.namePromotion = namePromotion;
	}

	public String getStartTimePromotion() {
		return startTimePromotion;
	}

	public void setStartTimePromotion(String startTimePromotion) {
		this.startTimePromotion = startTimePromotion;
	}

	public String getEndTimePromotion() {
		return endTimePromotion;
	}

	public void setEndTimePromotion(String endTimePromotion) {
		this.endTimePromotion = endTimePromotion;
	}

	public short getDiscountPromotion() {
		return discountPromotion;
	}

	public void setDiscountPromotion(short discountPromotion) {
		this.discountPromotion = discountPromotion;
	}

	public String getDescribePromotion() {
		return describePromotion;
	}

	public void setDescribePromotion(String describePromotion) {
		this.describePromotion = describePromotion;
	}
	
	
}
