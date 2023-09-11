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
import javax.persistence.OneToOne;

@Entity( name = "karma.book" )
public class Book {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idBook;
	private String nameBook;
	private int priceBook;
	private int yearPublicationBook;
	private String shortDescriptionBook;
	private String fullDescriptionBook;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idSupplier")
	Supplier supplier;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idPublisher")
	Publisher publisher;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "karma.both_book_author",
	joinColumns = {@JoinColumn(name = "idBookA", referencedColumnName = "idBook")},
	inverseJoinColumns = {@JoinColumn(name = "idAuthor", referencedColumnName = "idAuthor")})
	List<Author> authors;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "karma.both_book_category",
	joinColumns = {@JoinColumn(name = "idBookC", referencedColumnName = "idBook")},
	inverseJoinColumns = {@JoinColumn(name = "idCategory", referencedColumnName = "idCategory")})
	List<Category> categories;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "karma.both_book_version",
	joinColumns = {@JoinColumn(name = "idBookV", referencedColumnName = "idBook")},
	inverseJoinColumns = {@JoinColumn(name = "idVersion", referencedColumnName = "idVersion")})
	List<Version> versions;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "karma.both_book_promotion",
	joinColumns = {@JoinColumn(name = "idBookP", referencedColumnName = "idBook")},
	inverseJoinColumns = {@JoinColumn(name = "idPromotion", referencedColumnName = "idPromotion")})
	List<Promotion> promotions;

	public Book() {
	}
	
	public Book(String nameBook, int priceBook, int yearPublicationBook, String shortDescriptionBook,
			String fullDescriptionBook) {
		this.nameBook = nameBook;
		this.priceBook = priceBook;
		this.yearPublicationBook = yearPublicationBook;
		this.shortDescriptionBook = shortDescriptionBook;
		this.fullDescriptionBook = fullDescriptionBook;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<Version> getVersions() {
		return versions;
	}

	public void setVersions(List<Version> versions) {
		this.versions = versions;
	}

	public List<Promotion> getPromotions() {
		return promotions;
	}

	public void setPromotions(List<Promotion> promotions) {
		this.promotions = promotions;
	}

	public List<Author> getAuthors() {
		return authors;
	}

	public void setAuthors(List<Author> authors) {
		this.authors = authors;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public int getIdBook() {
		return idBook;
	}

	public void setIdBook(int idBook) {
		this.idBook = idBook;
	}

	public String getNameBook() {
		return nameBook;
	}

	public void setNameBook(String nameBook) {
		this.nameBook = nameBook;
	}

	public int getPriceBook() {
		return priceBook;
	}

	public void setPriceBook(int priceBook) {
		this.priceBook = priceBook;
	}

	public int getYearPublicationBook() {
		return yearPublicationBook;
	}

	public void setYearPublicationBook(int yearPublicationBook) {
		this.yearPublicationBook = yearPublicationBook;
	}

	public String getShortDescriptionBook() {
		return shortDescriptionBook;
	}

	public void setShortDescriptionBook(String shortDescriptionBook) {
		this.shortDescriptionBook = shortDescriptionBook;
	}

	public String getFullDescriptionBook() {
		return fullDescriptionBook;
	}

	public void setFullDescriptionBook(String fullDescriptionBook) {
		this.fullDescriptionBook = fullDescriptionBook;
	}

	@Override
	public String toString() {
		return "Book [idBook=" + idBook + ", nameBook=" + nameBook + ", priceBook=" + priceBook
				+ ", yearPublicationBook=" + yearPublicationBook + ", shortDescriptionBook=" + shortDescriptionBook
				+ ", fullDescriptionBook=" + fullDescriptionBook + ", supplier=" + supplier + ", publisher=" + publisher
				+ ", authors=" + authors + ", categories=" + categories + ", versions=" + versions + ", promotions="
				+ promotions + "]";
	}

	
}
