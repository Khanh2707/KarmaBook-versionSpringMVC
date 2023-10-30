package com.phuckhanh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phuckhanh.dao.Book_By_VersionDAO;
import com.phuckhanh.dbInterface.Book_By_VersionMethods;
import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Version;
import com.phuckhanh.model.Image;

@Service
public class Book_By_VersionService implements Book_By_VersionMethods {
	
	@Autowired
	Book_By_VersionDAO book_by_versionDAO;

	@Override
	public Book_Version getVersionDefaultBookById(int idBook) {
		
		return book_by_versionDAO.getVersionDefaultBookById(idBook);
	}

	@Override
	public List<Image> getImagesDefaultBookById(int idBook) {

		return book_by_versionDAO.getImagesDefaultBookById(idBook);
	}

	@Override
	public List<Book_Author> getBookBySameAuthor(int idBook, List<Book_Author> authors) {

		return book_by_versionDAO.getBookBySameAuthor(idBook, authors);
	}

	@Override
	public Book_Version getVersionBookById(int idBook, int idVersion) {
		
		return book_by_versionDAO.getVersionBookById(idBook, idVersion);
	}

	@Override
	public List<Image> getImagesBookByVersion(int idBook, int idVersion) {
		
		return book_by_versionDAO.getImagesBookByVersion(idBook, idVersion);
	}
	
}
