package dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import dbInterface.LoginMethods;
import model.Role_User;
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
	public boolean RegisterUser(Role_User role_user) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			session.update(role_user);
			return true;
		} catch (Exception e) {
			return false;
		}
	
	}

	@Override
	@Transactional
	public Role_User GetRoleUser_User() {
		Session session = sessionFactory.getCurrentSession();
		try {
			Role_User role_user = (Role_User) session.createQuery("FROM karma.role_user WHERE idRoleUser = 1").getSingleResult();
			return role_user;
		}
		catch (Exception e) {
			return null;
		}
		
	}
	
}
