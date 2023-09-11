package model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name = "karma.publisher")
public class Publisher {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idPublisher;
	private String namePublisher;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "idPublisher")
	List<Book> books;
	
	public Publisher() {
	}

	public Publisher(String namePublisher, List<Book> books) {
		this.namePublisher = namePublisher;
		this.books = books;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public int getIdPublisher() {
		return idPublisher;
	}

	public void setIdPublisher(int idPublisher) {
		this.idPublisher = idPublisher;
	}

	public String getNamePublisher() {
		return namePublisher;
	}

	public void setNamePublisher(String namePublisher) {
		this.namePublisher = namePublisher;
	}

	@Override
	public String toString() {
		return "Publisher [idPublisher=" + idPublisher + ", namePublisher=" + namePublisher + "]";
	}
	
	
}
