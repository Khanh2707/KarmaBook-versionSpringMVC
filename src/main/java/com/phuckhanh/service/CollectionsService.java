package com.phuckhanh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phuckhanh.dao.CollectionsDAO;
import com.phuckhanh.dbInterface.CollectionsMethods;
import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Category;

@Service
public class CollectionsService implements CollectionsMethods {
	
	@Autowired
	CollectionsDAO collectionsDAO;

	@Override
	public List<Book_Category> getBookByCategory(int idCategory) {

		return collectionsDAO.getBookByCategory(idCategory);
	}

	@Override
	public List<Book_Author> getBookByAuthor(int idAuthor) {

		return collectionsDAO.getBookByAuthor(idAuthor);
	}

}
