package com.phuckhanh.ajaxApi;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phuckhanh.service.EmailService;

@Controller
@RequestMapping("apiForgotPassword/")
public class apiForgotPassword {
	
	@Autowired
	EmailService emailService;
	
	@GetMapping("sendEmail")
	@ResponseBody
	public String sendEmail(@RequestParam String email) {
		
		String alphabet = "ABCDEFGHIJKLMNOIPQRSTUVWXYZ";
		
		StringBuilder stringBuilder = new StringBuilder();
		
		Random random = new Random();
		
		int length = 7;
		
		for (int i = 0; i < length; i++) {
			int index = random.nextInt(alphabet.length());
			
			char randomChar = alphabet.charAt(index);
			
			stringBuilder.append(randomChar);
		}
		
		try {
			emailService.sendEmail(email, stringBuilder.toString());
		} catch (Exception e) {
			return "false";
		}
		
		return "true";
		
	}
	
}
