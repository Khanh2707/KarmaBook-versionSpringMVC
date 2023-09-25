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
	public Book_Version getVersionDefaultBookById(int idBook) {
		Session session = sessionFactory.getCurrentSession();

		Book_Version book_Version = (Book_Version) session.createQuery("FROM karma.both_book_version WHERE idBookV = "+idBook+" and idVersion = 1").getSingleResult();
		
		return book_Version;
	}

	@Override
	@Transactional
	public List<Image> getImagesDefaultBookById(int idBook) {
		Session session = sessionFactory.getCurrentSession();
		
		List<Image> images = (List<Image>) session.createQuery("FROM karma.image WHERE idBook = "+idBook+" and idVersionI = 1").getResultList();
		
		return images;
	}

}
