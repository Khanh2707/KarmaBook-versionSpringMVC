package com.phuckhanh.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity(name = "karma.author")
public class Author {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idAuthor;
	private String nameAuthor;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Book_Author> book_author;
	
	public Author() {
	}

	public Author(String nameAuthor) {
		this.nameAuthor = nameAuthor;
	}

	public List<Book_Author> getBook_author() {
		return book_author;
	}

	public void setBook_author(List<Book_Author> book_author) {
		this.book_author = book_author;
	}

	public int getIdAuthor() {
		return idAuthor;
	}

	public void setIdAuthor(int idAuthor) {
		this.idAuthor = idAuthor;
	}

	public String getNameAuthor() {
		return nameAuthor;
	}

	public void setNameAuthor(String nameAuthor) {
		this.nameAuthor = nameAuthor;
	}
	
	
}
