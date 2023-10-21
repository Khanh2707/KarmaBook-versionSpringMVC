package com.phuckhanh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phuckhanh.dao.Detail_BookDAO;
import com.phuckhanh.dbInterface.Detail_BookMethods;
import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Version;
import com.phuckhanh.model.Image;

@Service
public class Detail_BookService implements Detail_BookMethods {
	
	@Autowired
	Detail_BookDAO detail_bookDAO;

	@Override
	public Book_Version getVersionDefaultBookById(int idBook) {
		
		return detail_bookDAO.getVersionDefaultBookById(idBook);
	}

	@Override
	public List<Image> getImagesDefaultBookById(int idBook) {

		return detail_bookDAO.getImagesDefaultBookById(idBook);
	}

	@Override
	public List<Book_Author> getBookBySameAuthor(int idBook, List<Book_Author> authors) {

		return detail_bookDAO.getBookBySameAuthor(idBook, authors);
	}
	
}
