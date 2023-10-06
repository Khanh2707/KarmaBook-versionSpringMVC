package com.phuckhanh.dbInterface;

import java.util.List;

import com.phuckhanh.model.Book;

public interface BookMethods {
	public List<Book> getAllBook();
	public List<Book> get10BookLatestById();
}
