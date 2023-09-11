package dbInterface;

import model.Role_User;
import model.User;

public interface LoginMethods {
	User AuthenticationLogin(String email, String password);

	boolean RegisterUser(User user);
}
