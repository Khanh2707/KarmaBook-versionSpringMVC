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

import com.phuckhanh.dbInterface.Book_By_VersionMethods;
import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Version;
import com.phuckhanh.model.Image;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Book_By_VersionDAO implements Book_By_VersionMethods {
	
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

	@Override
	@Transactional
	public List<Book_Author> getBookBySameAuthor(int idBook, List<Book_Author> authors) {
		Session session = sessionFactory.getCurrentSession();
		
		String idAuthors = "";
		
		for (int i = 0; i < authors.size(); i++) {
			if (i == authors.size() - 1)
				idAuthors += Integer.toString(authors.get(i).getAuthor().getIdAuthor());
			else
				idAuthors += Integer.toString(authors.get(i).getAuthor().getIdAuthor()) + ", ";
		}
		
		List<Book_Author> book_author_s = (List<Book_Author>) session.createQuery("FROM karma.both_book_author WHERE not idBookA = "+idBook+" and idAuthor in ("+idAuthors+")").getResultList();
		
		for (Book_Author book_Author : book_author_s) {
			Hibernate.initialize(book_Author.getBook().getImages());
		}
		
		return book_author_s;
	}

	@Override
	@Transactional
	public Book_Version getVersionBookById(int idBook, int idVersion) {
		Session session = sessionFactory.getCurrentSession();

		Book_Version book_Version = (Book_Version) session.createQuery("FROM karma.both_book_version WHERE idBookV = "+idBook+" and idVersion = "+idVersion+"").getSingleResult();
		
		return book_Version;
	}

	@Override
	@Transactional
	public List<Image> getImagesBookByVersion(int idBook, int idVersion) {
		Session session = sessionFactory.getCurrentSession();
		
		List<Image> images = (List<Image>) session.createQuery("FROM karma.image WHERE idBook = "+idBook+" and idVersionI = "+idVersion+"").getResultList();
		
		return images;
	}

}
