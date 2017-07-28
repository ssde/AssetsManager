package com.ssde.web.struts2.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	@Id @GeneratedValue
	Long id;
	public Long getId() { return id; }
	public void setId(Long id) { this.id = id; }

	String name;
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }

	String password;
	public String getPassword() { return password; }
	public void setPassword(String password) { this.password = password; }

	String screenname;
	public String getScreenname() { return screenname; }
	public void setScreenname(String screenname) { this.screenname = screenname; }
	
	@ManyToMany
	@JoinTable(
		name="users_roles",
		joinColumns=@JoinColumn(name="userfk"),
		inverseJoinColumns=@JoinColumn(name="rolfk")
	)
	Set<Rol> roles;	
	public Set<Rol> getRoles() { return roles; }
	public void setRoles(Set<Rol> roles) { this.roles = roles; }
	
	public User(Long id, String name, String password, String screenname) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.screenname = screenname;
	}

}
