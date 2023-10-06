package com.phuckhanh.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.phuckhanh.dbInterface.CollectionsMethods;
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
		
		return book_category_s;
	}
	
}
