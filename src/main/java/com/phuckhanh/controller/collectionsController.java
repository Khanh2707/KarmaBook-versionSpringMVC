package com.phuckhanh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.phuckhanh.model.Author;
import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Category;
import com.phuckhanh.model.Category;
import com.phuckhanh.service.AuthorService;
import com.phuckhanh.service.CategoryService;
import com.phuckhanh.service.CollectionsService;

@Controller
public class collectionsController {
	
	@GetMapping("collections")
	public ModelAndView Default(@RequestParam(value = "category", defaultValue = "all") String category, @RequestParam(value = "author", required = false) String author) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/collections");
		
		if (author != null) {
			mav.addObject("bookByCategory", getBookByAuthor(Integer.valueOf(author)));
			
			mav.addObject("author", getAuthorById(Integer.valueOf(author)));
			
			return mav;
		}
		
		mav.addObject("bookByCategory", getBookByCategory(category.equals("all") ? 0 : Integer.valueOf(category)));
		
		if (!category.equals("all"))
			mav.addObject("category", getCategoryById(Integer.valueOf(category)));
		
		return mav;
		
	}
	
	@Autowired
	CollectionsService collectionsService;
	
	public List<Book_Category> getBookByCategory(int idCategory) {
		
		return collectionsService.getBookByCategory(idCategory);
	}
	
	public List<Book_Author> getBookByAuthor(int idAuthor) {

		return collectionsService.getBookByAuthor(idAuthor);
	}
	
	@Autowired
	CategoryService categoryService;
	
	public Category getCategoryById(int idCategory) {

		return categoryService.getCategoryById(idCategory);
	}
	
	@Autowired
	AuthorService authorService;
	
	public Author getAuthorById(int idAuthor) {

		return authorService.getAuthorById(idAuthor);
	}
}
