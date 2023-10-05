package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CollectionsDAO;
import dbInterface.CollectionsMethods;
import model.Book_Category;

@Service
public class CollectionsService implements CollectionsMethods {
	
	@Autowired
	CollectionsDAO collectionsDAO;

	@Override
	public List<Book_Category> getBookByCategory(int idCategory) {

		return collectionsDAO.getBookByCategory(idCategory);
	}

}
