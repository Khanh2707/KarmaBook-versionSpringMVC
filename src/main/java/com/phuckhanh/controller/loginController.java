package com.phuckhanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginController {
	
	@GetMapping("login")
	public String Default() {
		
		return "user/login";
	}
	
}
