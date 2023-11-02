package com.phuckhanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("login")
public class loginController {
	
	@GetMapping
	public String Default(HttpServletRequest httpServletRequest, ModelMap modelMap) {
		Cookie[] cookies = httpServletRequest.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username")) {
				modelMap.addAttribute("usernameCookie", cookie.getValue());
			}
		}
		return "user/login";
	}
	
}
