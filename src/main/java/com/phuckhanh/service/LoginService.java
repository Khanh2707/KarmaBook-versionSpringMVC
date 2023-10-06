package com.phuckhanh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phuckhanh.dao.LoginDAO;
import com.phuckhanh.dbInterface.LoginMethods;
import com.phuckhanh.model.Role_User;
import com.phuckhanh.model.User;

@Service
public class LoginService implements LoginMethods {
	
	@Autowired
	LoginDAO loginDAO;

	@Override
	public User AuthenticationLogin(String email, String password) {
		return loginDAO.AuthenticationLogin(email, password);
	}

	@Override
	public boolean RegisterUser(User user) {
		
		return loginDAO.RegisterUser(user);
	}

	@Override
	public Role_User GetRoleUser_User() {

		return loginDAO.GetRoleUser_User();
	}
	
}
