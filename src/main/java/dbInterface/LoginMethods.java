package dbInterface;

import model.Role_User;
import model.User;

public interface LoginMethods {
	User AuthenticationLogin(String email, String password);
	Role_User GetRoleUser_User();
	boolean RegisterUser(Role_User role_user);
}
