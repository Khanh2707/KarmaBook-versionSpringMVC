package com.phuckhanh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.phuckhanh.dbInterface.EmailMethods;

@Service
public class EmailService implements EmailMethods {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public void sendEmail(String username, String userEmail, String result) {
		
		SimpleMailMessage newEmail = new SimpleMailMessage();
		
		newEmail.setTo(userEmail);
		newEmail.setSubject("Reset password");
		newEmail.setText("Hi" + username + "Code is: " + result);
		
		mailSender.send(newEmail);
	}

}
