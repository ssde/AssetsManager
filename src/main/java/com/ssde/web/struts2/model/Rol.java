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
@Table(name="roles")
public class Rol {
	@Id @GeneratedValue
	Long id;
	public Long getId() { return id; }
	public void setId(Long id) { this.id = id; }

	String name;
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }

	String detail;
	public String getDetail() { return detail; }
	public void setDetail(String detail) { this.detail = detail; }
	
	@ManyToMany
	@JoinTable(
		name="users_roles",
		joinColumns=@JoinColumn(name="rolfk"),
		inverseJoinColumns=@JoinColumn(name="userfk")
	)
	Set<User> users;
	public Set<User> getUsers() { return users; }
	public void setUsers(Set<User> users) { this.users = users; }
	
	public Rol(Long id, String name, String detail, Set<User> users) {
		this.name = name;
		this.detail = detail;
		this.users = users;
	}
	
	public Rol(){}
}
