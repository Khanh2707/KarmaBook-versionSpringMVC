package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Author;
import model.Book;
import model.Version;
import service.Detail_BookService;

@Controller
@RequestMapping("product")
public class detail_bookController {
	
	@GetMapping
	public String Default(@RequestParam("idb") int idb, ModelMap modelMap) {
		
		Book book = getBookById(idb);
		
		modelMap.addAttribute("bookById", book);
		
		return "user/detail_book";
	}
	
	@Autowired
	Detail_BookService detail_bookService;
	
	public Book getBookById(int idb) {
		
		return detail_bookService.getBookById(idb);
	}
}
