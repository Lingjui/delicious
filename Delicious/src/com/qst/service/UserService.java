package com.qst.service;

import java.util.List;

import com.qst.model.User;

public interface UserService {
	User login(User user);
	public List<User> getUserList(int offset, int pagesize);
	User getUserById(int id);
	void updateUser(User user);
	void deleteUser(int id);
	void save(User user);
	boolean getUserByUsername(String username);
	List<User> getUserList();
	boolean getUserByemail(String email);
}
