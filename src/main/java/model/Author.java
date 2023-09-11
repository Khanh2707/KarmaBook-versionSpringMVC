package model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity(name = "karma.author")
public class Author {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idAuthor;
	private String nameAuthor;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "karma.both_book_author",
	joinColumns = {@JoinColumn(name = "idAuthor", referencedColumnName = "idAuthor")},
	inverseJoinColumns = {@JoinColumn(name = "idBookA", referencedColumnName = "idBook")})
	List<Book> books;
	
	public Author() {
	}

	public Author(String nameAuthor) {
		this.nameAuthor = nameAuthor;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
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
