package com.phuckhanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cartController {

	@GetMapping("cart")
	public String Default(ModelMap modelMap) {
		
		return "user/cart";
	}
	
}
