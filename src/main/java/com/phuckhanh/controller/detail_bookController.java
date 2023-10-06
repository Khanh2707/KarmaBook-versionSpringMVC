package com.phuckhanh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phuckhanh.model.Author;
import com.phuckhanh.model.Book;
import com.phuckhanh.model.Book_Author;
import com.phuckhanh.model.Book_Version;
import com.phuckhanh.model.Category;
import com.phuckhanh.model.Image;
import com.phuckhanh.model.Version;
import com.phuckhanh.service.Detail_BookService;

@Controller
@RequestMapping("product")
public class detail_bookController {
	
	@GetMapping
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
	Detail_BookService detail_bookService;
	
	public Book_Version getVersionDefaultBookById(int idBook) {

		return detail_bookService.getVersionDefaultBookById(idBook);
	}
	
	public List<Image> getImagesDefaultBookById(int idBook) {

		return detail_bookService.getImagesDefaultBookById(idBook);
	}
	
	public List<Book_Author> getBookBySameAuthor(int idBook, List<Book_Author> authors) {
		
		return detail_bookService.getBookBySameAuthor(idBook, authors);
	}
	
}
