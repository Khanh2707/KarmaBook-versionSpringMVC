package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Book;
import model.Book_Version;
import model.Category;
import model.Image;
import model.Version;
import service.Detail_BookService;

@Controller
@RequestMapping("product")
public class detail_bookController {
	
	@GetMapping
	public String Default(@RequestParam("idb") int idb, ModelMap modelMap) {
		
		Book_Version versionDefaultBookById = getVersionDefaultBookById(idb);
		List<Image> imagesDefaultBookById = getImagesDefaultBookById(idb);
		
		modelMap.addAttribute("versionDefaultBookById", versionDefaultBookById);
		modelMap.addAttribute("imagesDefaultBookById", imagesDefaultBookById);
		
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
}
