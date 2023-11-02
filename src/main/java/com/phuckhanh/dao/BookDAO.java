package com.phuckhanh.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.phuckhanh.dbInterface.BookMethods;
import com.phuckhanh.model.Book;
import com.phuckhanh.model.Image;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class BookDAO implements BookMethods {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Book> getAllBook() {
		Session session = sessionFactory.getCurrentSession();
		
		List<Book> books = (List<Book>) session.createQuery("FROM karma.book").getResultList();
		
		return books;
	}

	@Override
	@Transactional
	public List<Book> get10BookLatestById() {
		Session session = sessionFactory.getCurrentSession();
		
		List<Book> books = (List<Book>) session.createQuery("from karma.book order by idBook desc").setFirstResult(0).setMaxResults(10).getResultList();
		
		for (Book book : books) {
			Hibernate.initialize(book.getImages());
			Hibernate.initialize(book.getBook_version());
			Hibernate.initialize(book.getPromotions());
		}
		
		return books;
	}
	
	
}
