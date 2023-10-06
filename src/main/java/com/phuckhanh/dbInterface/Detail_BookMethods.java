package com.phuckhanh.dbInterface;

import java.util.List;

import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Version;
import com.phuckhanh.model.Image;

public interface Detail_BookMethods {
	public Book_Version getVersionDefaultBookById(int idBook);
	public List<Image> getImagesDefaultBookById(int idBook);
	public List<Book_Author> getBookBySameAuthor(int idBook, List<Book_Author> authors);
}
