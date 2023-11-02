package com.phuckhanh.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phuckhanh.dbInterface.CollectionsMethods;
import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Category;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CollectionsDAO implements CollectionsMethods {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Book_Category> getBookByCategory(int idCategory) {
		Session session = sessionFactory.getCurrentSession();
		
		List<Book_Category> book_category_s;
		
		if (idCategory == 0)
			book_category_s = (List<Book_Category>) session.createQuery("FROM karma.both_book_category").getResultList();
		else 
			book_category_s = (List<Book_Category>) session.createQuery("FROM karma.both_book_category WHERE idCategory = "+idCategory+"").getResultList();
		
		for (Book_Category book_Category : book_category_s) {
			Hibernate.initialize(book_Category.getBook().getImages());
			Hibernate.initialize(book_Category.getBook().getBook_version());
			Hibernate.initialize(book_Category.getBook().getPromotions());
		}
		
		return book_category_s;
	}

	@Override
	@Transactional
	public List<Book_Author> getBookByAuthor(int idAuthor) {
		Session session = sessionFactory.getCurrentSession();
		
		List<Book_Author> book_author_s = (List<Book_Author>) session.createQuery("FROM karma.both_book_author WHERE idAuthor = "+idAuthor+"").getResultList();;
		
		for (Book_Author book_Author : book_author_s) {
			Hibernate.initialize(book_Author.getBook().getImages());
			Hibernate.initialize(book_Author.getBook().getBook_version());
			Hibernate.initialize(book_Author.getBook().getPromotions());
		}
		
		return book_author_s;
	}
	
}
