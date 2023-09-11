package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Role_User;
import model.User;
import service.LoginService;

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
		User user = new User(email, password, name);
		
		boolean res = loginService.RegisterUser(user);
		
		if (res) {
			return "redirect:/login";
		}
		else {
			return "user/register";
		}
	}
}
