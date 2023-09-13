package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Book;
import service.BookService;

@Controller
@RequestMapping("collections")
public class collectionsController {
	
	@GetMapping
	public ModelAndView Default() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/collections");
		
		mav.addObject("allBooks", getAllBook());
		
		return mav;
		
	}
	
	@Autowired
	BookService bookService;
	
	public List<Book> getAllBook() {
		
		List<Book> books = bookService.getAllBook();
		
		return books;
	}
}
