package com.phuckhanh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Version;
import com.phuckhanh.model.Image;
import com.phuckhanh.service.Book_By_VersionService;

@Controller
public class detail_bookController {
	
	@GetMapping("product")
	public String Default(@RequestParam("idb") int idb, ModelMap modelMap) {
		
		Book_Version versionDefaultBookById = getVersionDefaultBookById(idb);
		List<Image> imagesDefaultBookById = getImagesDefaultBookById(idb);
		
		List<Book_Author> booksSameAuthor = getBookBySameAuthor(idb, versionDefaultBookById.getBook().getBook_author());
		
		modelMap.addAttribute("versionDefaultBookById", versionDefaultBookById);
		modelMap.addAttribute("imagesDefaultBookById", imagesDefaultBookById);
		
		modelMap.addAttribute("booksSameAuthor", booksSameAuthor);
		
		modelMap.addAttribute("idb", idb);
		
		return "user/detail_book";
	}
	
	@Autowired
	Book_By_VersionService book_by_versionService;
	
	public Book_Version getVersionDefaultBookById(int idBook) {

		return book_by_versionService.getVersionDefaultBookById(idBook);
	}
	
	public List<Image> getImagesDefaultBookById(int idBook) {

		return book_by_versionService.getImagesDefaultBookById(idBook);
	}
	
	public List<Book_Author> getBookBySameAuthor(int idBook, List<Book_Author> authors) {
		
		return book_by_versionService.getBookBySameAuthor(idBook, authors);
	}
	
}
