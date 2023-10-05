package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity( name = "karma.book" )
public class Book {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idBook;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idSupplier")
	Supplier supplier;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idPublisher")
	Publisher publisher;
	
	@OneToMany(cascade = CascadeType.ALL)
	@LazyCollection(value = LazyCollectionOption.FALSE)
	@JoinColumn(name = "idBook")
	List<Image> images;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
	@LazyCollection(value = LazyCollectionOption.FALSE)
	private List<Book_Author> book_author;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
	@LazyCollection(value = LazyCollectionOption.FALSE)
	private List<Book_Category> book_category;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
	@LazyCollection(value = LazyCollectionOption.FALSE)
	private List<Book_Version> book_version;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@LazyCollection(value = LazyCollectionOption.FALSE)
	@JoinTable(name = "karma.both_book_promotion",
	joinColumns = {@JoinColumn(name = "idBookP", referencedColumnName = "idBook")},
	inverseJoinColumns = {@JoinColumn(name = "idPromotion", referencedColumnName = "idPromotion")})
	List<Promotion> promotions;

	public List<Book_Version> getBook_version() {
		return book_version;
	}

	public void setBook_version(List<Book_Version> book_version) {
		this.book_version = book_version;
	}

	public Book() {
	}

	public Book(List<Image> images) {
		this.images = images;
	}

	public List<Book_Category> getBook_category() {
		return book_category;
	}

	public void setBook_category(List<Book_Category> book_category) {
		this.book_category = book_category;
	}

	public List<Promotion> getPromotions() {
		return promotions;
	}

	public void setPromotions(List<Promotion> promotions) {
		this.promotions = promotions;
	}

	public List<Book_Author> getBook_author() {
		return book_author;
	}

	public void setBook_author(List<Book_Author> book_author) {
		this.book_author = book_author;
	}

	public List<Image> getImages() {
		return images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
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

	@Override
	public String toString() {
		return "Book [idBook=" + idBook + ", supplier=" + supplier + ", publisher=" + publisher + ", images=" + images
				+ ", book_author=" + book_author + ", book_category=" + book_category + ", book_version=" + book_version
				+ ", promotions=" + promotions + "]";
	}

	
}
