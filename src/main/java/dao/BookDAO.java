package dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import dbInterface.BookMethods;
import model.Book;
import model.Image;

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
	
	
}
