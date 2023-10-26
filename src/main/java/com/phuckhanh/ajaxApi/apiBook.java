package com.phuckhanh.ajaxApi;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.phuckhanh.model.Book_Version;

@Controller
@RequestMapping("apiBook/")
@SessionAttributes("user")
public class apiBook {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@GetMapping(path = "selectVersionBook", produces = "application/json; charset = utf-8")
	@ResponseBody
	@Transactional
	public Book_Version selectVersionBook(@RequestParam String idVersion, @RequestParam String idBook) {
		Session session = sessionFactory.getCurrentSession();

		Book_Version book_Version = (Book_Version) session.createQuery("FROM karma.both_book_version WHERE idBookV = "+idBook+" and idVersion = "+idVersion+"").getSingleResult();
		
		return book_Version;
	}
	
}
