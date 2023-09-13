package dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import dbInterface.Detail_BookMethods;
import model.Book;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Detail_BookDAO implements Detail_BookMethods {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public Book getBookById(int idBook) {
		Session session = sessionFactory.getCurrentSession();
		
		Book book = (Book) session.createQuery("FROM karma.book WHERE idBook = "+idBook+"").getSingleResult();
		
		return book;
	}

}
