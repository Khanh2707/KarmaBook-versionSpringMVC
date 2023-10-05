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

import model.Book_Category;
import model.Book_Version;
import model.Category;
import model.User;
import service.CategoryService;
import service.CollectionsService;
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
			html += "<li class='"+category.getIdCategory()+"'><a href='#'>"+category.getNameCategory()+"</a></li>";
		}
		
		return html;
		
	}
	
	@Autowired
	CollectionsService collectionsService;
	
	@GetMapping(path = "GetBookByCategory", produces = "text/plain; charset = utf-8")
	@ResponseBody
	@Transactional
	public String GetBookByCategory(@RequestParam String idCategory) {
		Session session = sessionFactory.getCurrentSession();

		List<Book_Category> book_category_s = (List<Book_Category>) session.createQuery("FROM karma.both_book_category WHERE idCategory = "+idCategory+"").getResultList();
		
		String html = "";
		
		for (Book_Category book_Category : book_category_s) {
			html += "<div class=\"list_product-div_out\">\r\n"
					+ "							<div class=\"list_product-div_in\">\r\n"
					+ "								<div class=\"list_product-div_in-img\">\r\n"
					+ "									<a href=\"product?idb="+book_Category.getBook().getIdBook()+" \"><img src=\""+book_Category.getBook().getImages().get(0).getPathImage()+" \" alt=\"\"></a>\r\n"
					+ "								</div>\r\n"
					+ "								<div class=\"list_product-div_in-info_book_short_des\">\r\n"
					+ "									<span> \r\n"
					+ "										<a href=\"product?idb="+book_Category.getBook().getIdBook()+" \">\r\n"
					+ "											"+book_Category.getBook().getBook_version().get(0).getNameBookByVersion()+" \r\n"
					+ "										</a>\r\n"
					+ "									</span>\r\n"
					+ "									<div class=\"div_in-price\">\r\n"
					+ "										<span class=\"div_in-price-sale\"><fmt:formatNumber type=\"number\" value=\"("+book_Category.getBook().getBook_version().get(0).getPriceBookByVersion()+" * (100 - "+book_Category.getBook().getPromotions().get(0).getDiscountPromotion()+")) / 100 \" /><ins>đ</ins></span> \r\n"
					+ "										<span class=\"div_in-price-origin\">\r\n"
					+ "											<del><fmt:formatNumber type=\"number\" value=\""+book_Category.getBook().getBook_version().get(0).getPriceBookByVersion()+" \" /><ins>đ</ins></del>\r\n"
					+ "										</span>\r\n"
					+ "									</div>\r\n"
					+ "								</div>\r\n"
					+ "								<div class=\"div_in__choice_hover\">\r\n"
					+ "									<div class=\"eye\">\r\n"
					+ "										<i class=\"fa-solid fa-eye\"></i>\r\n"
					+ "									</div>\r\n"
					+ "									<div>\r\n"
					+ "										<i class=\"fa-solid fa-bag-shopping\"></i>\r\n"
					+ "									</div>\r\n"
					+ "									<div>\r\n"
					+ "										<i class=\"fa-solid fa-cart-shopping\"></i>\r\n"
					+ "									</div>\r\n"
					+ "								</div>\r\n"
					+ "							</div>\r\n"
					+ "							<span class=\"div_out-label_sale\">-"+book_Category.getBook().getPromotions().get(0).getDiscountPromotion()+"%</span>\r\n"
					+ "						</div>";
		}
		
		return html;
	}
	
}
