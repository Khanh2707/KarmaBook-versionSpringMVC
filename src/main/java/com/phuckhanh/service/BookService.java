package com.phuckhanh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phuckhanh.dao.BookDAO;
import com.phuckhanh.dbInterface.BookMethods;
import com.phuckhanh.model.Book;

@Service
public class BookService implements BookMethods {
	
	@Autowired
	BookDAO bookDAO;

	@Override
	public List<Book> getAllBook() {

		return bookDAO.getAllBook();
	}

	@Override
	public List<Book> get10BookLatestById() {

		return bookDAO.get10BookLatestById();
	}

}
