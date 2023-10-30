package com.phuckhanh.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "karma.role_user")
public class Role_User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idRoleUser;
	private String nameRoleUser;
	
	@OneToMany(mappedBy = "role_user", cascade = CascadeType.ALL)
	List<User> users;
	
	public Role_User() {
	}

	public Role_User(String nameRoleUser) {
		this.nameRoleUser = nameRoleUser;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public int getIdRoleUser() {
		return idRoleUser;
	}

	public void setIdRoleUser(int idRoleUser) {
		this.idRoleUser = idRoleUser;
	}

	public String getNameRoleUser() {
		return nameRoleUser;
	}

	public void setNameRoleUser(String nameRoleUser) {
		this.nameRoleUser = nameRoleUser;
	}

	@Override
	public String toString() {
		return "Role_User [idRoleUser=" + idRoleUser + ", nameRoleUser=" + nameRoleUser + "]";
	}
	
	
}
