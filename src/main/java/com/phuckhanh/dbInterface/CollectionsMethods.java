package com.phuckhanh.dbInterface;

import java.util.List;

import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Category;

public interface CollectionsMethods {
	public List<Book_Category> getBookByCategory(int idCategory);
	public List<Book_Author> getBookByAuthor(int idAuthor);
}
