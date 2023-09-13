package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Detail_BookDAO;
import dbInterface.Detail_BookMethods;
import model.Book;

@Service
public class Detail_BookService implements Detail_BookMethods {
	
	@Autowired
	Detail_BookDAO detail_bookDAO;

	@Override
	public Book getBookById(int idBook) {
		
		return detail_bookDAO.getBookById(idBook);
	}
	
}
