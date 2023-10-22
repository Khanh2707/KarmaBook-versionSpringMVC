package com.phuckhanh.ajaxApi;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phuckhanh.model.Book_Category;
import com.phuckhanh.model.Category;
import com.phuckhanh.service.CategoryService;
import com.phuckhanh.service.CollectionsService;

@Controller
@RequestMapping("apiCategory/")
public class apiCategory {
	
	public static String nameCategory;
	
	
	@Autowired
	CategoryService categoryService;
	
	@GetMapping(path = "getAllCategory", produces = "text/plain; charset = utf-8")
	@ResponseBody
	public String getAllCategory() {
		
		List<Category> categories = categoryService.getAllCategory();
		
		String html = "";
		
		for (Category category : categories) {
			html += "<li class='"+category.getIdCategory()+"'><a href='#'>"+category.getNameCategory()+"</a></li>";
		}
		
		return html;
		
	}
	
	@Autowired
	CollectionsService collectionsService;
	
	@GetMapping(path = "getBookByCategory", produces = "text/plain; charset = utf-8")
	@ResponseBody
	public String getBookByCategory(@RequestParam String idCategory) {

		List<Book_Category> book_category_s = collectionsService.getBookByCategory(Integer.valueOf(idCategory));
		
		nameCategory = book_category_s.get(0).getCategory().getNameCategory();
		
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
					+ "										<span class=\"div_in-price-sale\">("+book_Category.getBook().getBook_version().get(0).getPriceBookByVersion()+" * (100 - "+book_Category.getBook().getPromotions().get(0).getDiscountPromotion()+")) / 100<ins>đ</ins></span> \r\n"
					+ "										<span class=\"div_in-price-origin\">\r\n"
					+ "											<del>"+book_Category.getBook().getBook_version().get(0).getPriceBookByVersion()+"<ins>đ</ins></del>\r\n"
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
	
	@GetMapping(path = "getCategoryById", produces = "text/plain; charset = utf-8")
	@ResponseBody
	public String getCategoryById(@RequestParam String idCategory) {
		
		String html = nameCategory;
		
		return html;
	}
	
}
