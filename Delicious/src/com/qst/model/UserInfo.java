package com.qst.model;

import java.util.HashSet;
import java.util.Set;

/**
 * @author Ling_jui;
 * @version 2017Äê1ÔÂ5ÈÕ
 * @type UserInfo
 */
public class UserInfo {
	private int id;
	private String username;
	private String password;
	private Set<User> users = new HashSet<User>();

	public UserInfo() {
		super();
	}

	public UserInfo(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}


	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
