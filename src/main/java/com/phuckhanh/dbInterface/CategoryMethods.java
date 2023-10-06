package com.phuckhanh.dbInterface;

import java.util.List;

import com.phuckhanh.model.Category;

public interface CategoryMethods {
	public List<Category> getAllCategory();
	public Category getCategoryById(int idCategory);
}
