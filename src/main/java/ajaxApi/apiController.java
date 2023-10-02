package ajaxApi;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.Book_Version;
import model.Category;
import model.User;
import service.CategoryService;
import service.LoginService;

@Controller
@RequestMapping("api/")
@SessionAttributes("user")
public class apiController {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	LoginService loginService;
	
	@GetMapping("AuthenticationLogin")
	@ResponseBody
	public String AuthenticationLogin(@RequestParam String email, @RequestParam String password, ModelMap modelMap) {
		
		User user = loginService.AuthenticationLogin(email, password);
		
		modelMap.addAttribute("user", user);
		
		if (user != null) {
			return "true";
		}
		else {
			return "false";
		}
		
	}
	
	@GetMapping("SelectVersionBook")
	@ResponseBody
	@Transactional
	public String SelectVersionBook(@RequestParam String idVersion, @RequestParam String idBook, ModelMap modelMap) {
		Session session = sessionFactory.getCurrentSession();

		Book_Version book_Version = (Book_Version) session.createQuery("FROM karma.both_book_version WHERE idBookV = "+idBook+" and idVersion = "+idVersion+"").getSingleResult();
		
		return idVersion;
	}
	
	@Autowired
	CategoryService categoryService;
	
	@GetMapping(path = "GetAllCategory", produces = "text/plain; charset = utf-8")
	@ResponseBody
	@Transactional
	public String GetAllCategory() {
		
		List<Category> categories = categoryService.getAllCategory();
		
		String html = "";
		
		for (Category category : categories) {
			html += "<li><a href='#'>"+category.getNameCategory()+"</a></li>";
		}
		
		return html;
		
	}
	
}
