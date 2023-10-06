package com.phuckhanh.dbInterface;

import com.phuckhanh.model.Role_User;
import com.phuckhanh.model.User;

public interface LoginMethods {
	User AuthenticationLogin(String email, String password);
	Role_User GetRoleUser_User();
	boolean RegisterUser(User user);
}
