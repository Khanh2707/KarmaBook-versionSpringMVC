package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import dbInterface.Detail_BookMethods;
import model.Book;
import model.Book_Version;
import model.Image;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Detail_BookDAO implements Detail_BookMethods {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public Book getBookById(int idBook) {
		Session session = sessionFactory.getCurrentSession();
		
//		Book book = (Book) session.createQuery("FROM karma.book WHERE idBook = "+idBook+"").getSingleResult();
		
		Book book = (Book) session.createQuery("FROM karma.book b join karma.both_book_version bbv WHERE b.idBook = "+idBook+" and idVersion = 1").getSingleResult();
		
		List<Image> images = (List<Image>) session.createQuery("FROM karma.image WHERE idBook = "+idBook+" and idVersionI = 1").getResultList();
		
		for (Image image : images) {
			System.out.println(image);
		}
		
		return book;
	}

}
