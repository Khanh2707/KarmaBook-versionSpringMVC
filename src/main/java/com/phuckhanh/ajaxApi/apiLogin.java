package com.phuckhanh.ajaxApi;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.phuckhanh.model.User;
import com.phuckhanh.service.LoginService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("apiLogin/")
@SessionAttributes("user")
public class apiLogin {
	
	@Autowired
	LoginService loginService;
	
	@GetMapping("authenticationLogin")
	@ResponseBody
	public String authenticationLogin(@RequestParam String email, @RequestParam String password, ModelMap modelMap, HttpSession httpSession, HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest) {
		
		User user = loginService.AuthenticationLogin(email, password);
		
		modelMap.addAttribute("user", user);
		
		httpSession.setMaxInactiveInterval(60);
		
		if (user != null) {
			Cookie cookie = new Cookie("username", user.getUsername());
			cookie.setMaxAge(60*60);
			httpServletResponse.addCookie(cookie);
			Cookie[] cookies = httpServletRequest.getCookies();
			for (Cookie cookie2 : cookies) {
				System.out.println(cookie2.getName()+" - "+cookie2.getValue());
			}
			System.out.println("---------");
			return "true";
		}
		else {
			return "false";
		}
		
	}
	
}
