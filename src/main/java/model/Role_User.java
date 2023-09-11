package model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name = "karma.role_user")
public class Role_User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idRoleUser;
	private String nameRoleUser;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "idRoleUser")
	List<User> user;
	
	
	public Role_User() {
	}

	public Role_User(String nameRoleUser, List<User> user) {
		this.nameRoleUser = nameRoleUser;
		this.user = user;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
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
