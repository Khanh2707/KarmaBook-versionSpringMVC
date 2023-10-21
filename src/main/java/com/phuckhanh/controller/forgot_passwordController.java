package com.phuckhanh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phuckhanh.service.EmailService;

@Controller
@RequestMapping("reset")
public class forgot_passwordController {

	@GetMapping
	public String Default() {
		
		return "user/forgot_password";
	}
	
//	@Autowired
//	EmailService emailService;
	
//	@PostMapping
//	public String sendEmail(String username, @RequestParam String email) {
//		
//		try {
//			emailService.sendEmail("Khánh", email, "FRIEND");
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		
//		return "user/forgot_password";
//		
//	}
	
}
