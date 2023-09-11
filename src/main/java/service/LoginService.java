package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.LoginDAO;
import dbInterface.LoginMethods;
import model.User;

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
	
}
