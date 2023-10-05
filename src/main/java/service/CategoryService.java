package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CategoryDAO;
import dbInterface.CategoryMethods;
import model.Category;

@Service
public class CategoryService implements CategoryMethods {
	
	@Autowired
	CategoryDAO categoryDAO;

	@Override
	public List<Category> getAllCategory() {

		return categoryDAO.getAllCategory();
	}

	@Override
	public Category getCategoryById(int idCategory) {

		return categoryDAO.getCategoryById(idCategory);
	}
	
}
