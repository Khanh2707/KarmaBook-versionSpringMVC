package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("product")
public class detail_bookController {
	
	@GetMapping("/{idBook}")
	public String Default(@PathVariable int idBook) {
		System.out.println(idBook);
		return "user/detail_book";
	}
}
