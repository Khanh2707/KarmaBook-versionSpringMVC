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
import javax.persistence.OneToMany;

@Entity(name = "karma.author")
public class Author {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idAuthor;
	private String nameAuthor;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
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
