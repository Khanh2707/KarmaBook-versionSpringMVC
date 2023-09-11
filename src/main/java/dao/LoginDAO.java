package dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import dbInterface.LoginMethods;
import model.User;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class LoginDAO implements LoginMethods {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public User AuthenticationLogin(String email, String password) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			User user = (User) session.createQuery("FROM karma.user WHERE username = '"+ email +"' and password = '"+ password +"'").getSingleResult();
			return user;
		}
		catch (Exception e) {
			return null;
		}
	}

	@Override
	@Transactional
	public boolean RegisterUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		
		int check = (int) session.save(user);
		
		if (check > 0) {
			return true;
		}
		
		return false;
	}
	
}
