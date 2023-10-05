package dbInterface;

import java.util.List;

import model.Book_Category;
import model.Category;

public interface CategoryMethods {
	public List<Category> getAllCategory();
	public Category getCategoryById(int idCategory);
}
