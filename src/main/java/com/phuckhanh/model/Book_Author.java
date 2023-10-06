package com.phuckhanh.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

@Entity(name = "karma.both_book_author")
public class Book_Author {

	@EmbeddedId
	private Book_Author_Key book_author_Key;
	
	@ManyToOne
	@MapsId("idBookKey")
	@JoinColumn(name = "idBookA")
	private Book book;
	
	@ManyToOne
	@MapsId("idAuthorKey")
	@JoinColumn(name = "idAuthor")
	private Author author;

	public Book_Author_Key getBook_author_Key() {
		return book_author_Key;
	}

	public void setBook_author_Key(Book_Author_Key book_author_Key) {
		this.book_author_Key = book_author_Key;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}
	
	
}
