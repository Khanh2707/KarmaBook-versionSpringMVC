package model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

@Entity(name = "karma.both_book_category")
public class Book_Category {
	
	@EmbeddedId
	private Book_Category_Key book_category_Key;
	
	@ManyToOne
	@MapsId("idBookKey")
	@JoinColumn(name = "idBookC")
	private Book book;
	
	@ManyToOne
	@MapsId("idCategoryKey")
	@JoinColumn(name = "idCategory")
	private Category category;

	public Book_Category_Key getBook_category_Key() {
		return book_category_Key;
	}

	public void setBook_category_Key(Book_Category_Key book_category_Key) {
		this.book_category_Key = book_category_Key;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
}
