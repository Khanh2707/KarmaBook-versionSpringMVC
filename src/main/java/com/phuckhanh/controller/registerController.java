package com.phuckhanh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phuckhanh.model.Role_User;
import com.phuckhanh.model.User;
import com.phuckhanh.service.LoginService;

@Controller
@RequestMapping("register")
public class registerController {

	@GetMapping
	public String Default() {
		
		return "user/register";
	}
	
	@Autowired
	LoginService loginService;
	
	@PostMapping
	public String RegisterUser(@RequestParam String name, @RequestParam String email, @RequestParam String password) {
		Role_User role_user = loginService.GetRoleUser_User();
		User user = new User(email, password, name);
		
		user.setRole_user(role_user);
		
		boolean res = loginService.RegisterUser(user);
		
		if (res) {
			return "redirect:/login";
		}
		else {
			return "user/register";
		}
	}
}
