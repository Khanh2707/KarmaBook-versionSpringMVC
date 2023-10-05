package dbInterface;

import java.util.List;

import model.Book_Category;

public interface CollectionsMethods {
	public List<Book_Category> getBookByCategory(int idCategory);
}
