package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Detail_BookDAO;
import dbInterface.Detail_BookMethods;
import model.Author;
import model.Book;
import model.Book_Author;
import model.Book_Version;
import model.Image;

@Service
public class Detail_BookService implements Detail_BookMethods {
	
	@Autowired
	Detail_BookDAO detail_bookDAO;

	@Override
	public Book_Version getVersionDefaultBookById(int idBook) {
		
		return detail_bookDAO.getVersionDefaultBookById(idBook);
	}

	@Override
	public List<Image> getImagesDefaultBookById(int idBook) {

		return detail_bookDAO.getImagesDefaultBookById(idBook);
	}

	@Override
	public List<Book_Author> getBookBySameAuthor(int idBook, List<Book_Author> authors) {

		return detail_bookDAO.getBookBySameAuthor(idBook, authors);
	}
	
}
