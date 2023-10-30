package com.phuckhanh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phuckhanh.dbInterface.CategoryMethods;
import com.phuckhanh.model.Category;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CategoryDAO implements CategoryMethods {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Category> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		
		List<Category> categories = (List<Category>) session.createQuery("FROM karma.category").getResultList();
		
		return categories;
	}

	@Override
	@Transactional
	public Category getCategoryById(int idCategory) {
		Session session = sessionFactory.getCurrentSession();
		
		Category category = (Category) session.createQuery("FROM karma.category WHERE idCategory = "+idCategory+"").getSingleResult();
		
		return category;
	}
	
	
}
