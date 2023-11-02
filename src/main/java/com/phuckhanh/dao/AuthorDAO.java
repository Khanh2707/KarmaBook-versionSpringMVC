package com.phuckhanh.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phuckhanh.dbInterface.AuthorMethods;
import com.phuckhanh.model.Author;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class AuthorDAO implements AuthorMethods {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public Author getAuthorById(int idAuthor) {
		Session session = sessionFactory.getCurrentSession();
		
		Author author = (Author) session.createQuery("FROM karma.author WHERE idAuthor = "+idAuthor+"").getSingleResult();
		
		return author;
	}

}
