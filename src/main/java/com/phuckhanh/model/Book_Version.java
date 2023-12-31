package com.phuckhanh.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"book_version_Key"})
@Entity(name = "karma.both_book_version")
public class Book_Version {
	
	@EmbeddedId
	private Book_Version_Key book_version_Key;
	
	@ManyToOne
	@MapsId("idBookKey")
	@JoinColumn(name = "idBookV")
	private Book book;
	
	@ManyToOne
	@MapsId("idVersionKey")
	@JoinColumn(name = "idVersion")
	private Version version;
	
	private int quantityBookByVersion;
	private String nameBookByVersion;
	private String priceBookByVersion;
	private int yearPublicationBookByVersion;
	private String shortDescriptionBookByVersion;
	private String fullDescriptionBookByVersion;
	
	public Book_Version_Key getBook_version_Key() {
		return book_version_Key;
	}
	public void setBook_version_Key(Book_Version_Key book_version_Key) {
		this.book_version_Key = book_version_Key;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Version getVersion() {
		return version;
	}
	public void setVersion(Version version) {
		this.version = version;
	}
	public int getQuantityBookByVersion() {
		return quantityBookByVersion;
	}
	public void setQuantityBookByVersion(int quantityBookByVersion) {
		this.quantityBookByVersion = quantityBookByVersion;
	}
	public String getNameBookByVersion() {
		return nameBookByVersion;
	}
	public void setNameBookByVersion(String nameBookByVersion) {
		this.nameBookByVersion = nameBookByVersion;
	}
	public String getPriceBookByVersion() {
		return priceBookByVersion;
	}
	public void setPriceBookByVersion(String priceBookByVersion) {
		this.priceBookByVersion = priceBookByVersion;
	}
	public int getYearPublicationBookByVersion() {
		return yearPublicationBookByVersion;
	}
	public void setYearPublicationBookByVersion(int yearPublicationBookByVersion) {
		this.yearPublicationBookByVersion = yearPublicationBookByVersion;
	}
	public String getShortDescriptionBookByVersion() {
		return shortDescriptionBookByVersion;
	}
	public void setShortDescriptionBookByVersion(String shortDescriptionBookByVersion) {
		this.shortDescriptionBookByVersion = shortDescriptionBookByVersion;
	}
	public String getFullDescriptionBookByVersion() {
		return fullDescriptionBookByVersion;
	}
	public void setFullDescriptionBookByVersion(String fullDescriptionBookByVersion) {
		this.fullDescriptionBookByVersion = fullDescriptionBookByVersion;
	}
	
	
}
