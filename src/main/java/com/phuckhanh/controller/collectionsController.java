package com.phuckhanh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.phuckhanh.model.Book_Category;
import com.phuckhanh.model.Category;
import com.phuckhanh.service.CategoryService;
import com.phuckhanh.service.CollectionsService;

@Controller
@RequestMapping("collections")
public class collectionsController {
	
	@GetMapping
	public ModelAndView Default(@RequestParam("category") String category) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/collections");
		
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
	
	@Autowired
	CategoryService categoryService;
	
	public Category getCategoryById(int idCategory) {

		return categoryService.getCategoryById(idCategory);
	}
}
