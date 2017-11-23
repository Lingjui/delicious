package com.qst.dao;

import java.util.List;

import com.qst.model.User;

/**
 * @author Ling_jui;
 * @version 2016Äê12ÔÂ19ÈÕ
 * @type UserDao
 */
public interface UserDao {
	User login(User user);
	public List<User> getUserList(int offset, int pagesize);
	User getUserById(int id);
	void updateUser(User user);
	void deleteUser(int id);
	void save(User user);
	boolean getUserByUsername(String username);
	boolean getUserByemail(String email);

}
