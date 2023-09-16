package dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import dbInterface.CategoryMethods;
import model.Category;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CategoryDAO implements CategoryMethods, Serializable {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Category> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		
		List<Category> categories = (List<Category>) session.createQuery("FROM karma.category").getResultList();
		
		return categories;
	}
	
	
}
