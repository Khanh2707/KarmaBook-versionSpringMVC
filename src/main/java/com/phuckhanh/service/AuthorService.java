package com.phuckhanh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phuckhanh.dao.AuthorDAO;
import com.phuckhanh.dbInterface.AuthorMethods;
import com.phuckhanh.model.Author;

@Service
public class AuthorService implements AuthorMethods {
	
	@Autowired
	AuthorDAO authorDAO;

	@Override
	public Author getAuthorById(int idAuthor) {

		return authorDAO.getAuthorById(idAuthor);
	}

}
