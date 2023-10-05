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

@Entity(name = "karma.category")
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idCategory;
	private String nameCategory;
	
	@OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
	private List<Book_Category> book_category;
	
	public Category() {
	}

	public Category(String nameCategory) {
		this.nameCategory = nameCategory;
	}

	public List<Book_Category> getBook_category() {
		return book_category;
	}

	public void setBook_category(List<Book_Category> book_category) {
		this.book_category = book_category;
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	public String getNameCategory() {
		return nameCategory;
	}

	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}
	
	
}
