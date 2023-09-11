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

@Entity(name = "karma.version")
public class Version {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idVersion;
	private String nameVersion;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "karma.both_book_version",
	joinColumns = {@JoinColumn(name = "idVersion", referencedColumnName = "idVersion")},
	inverseJoinColumns = {@JoinColumn(name = "idBookV", referencedColumnName = "idBook")})
	List<Book> books;
	
	public Version() {
	}

	public Version(String nameVersion) {
		this.nameVersion = nameVersion;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
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
