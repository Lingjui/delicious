package com.qst.service.impl;

import java.util.Date;
import java.util.List;

import com.qst.dao.UserDao;
import com.qst.model.User;
import com.qst.service.UserService;

public class UserServiceImpl implements UserService{
	public UserServiceImpl() {
		System.out.println("≤‚ ‘");
	}
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userDao.login(user);
	}

	@Override
	public List<User> getUserList(int offset, int pagesize) {
		// TODO Auto-generated method stub
		return userDao.getUserList(offset, pagesize);
	}

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.getUserById(id);
	}

	@Override
	public void updateUser(User user) {
		user.setPhoto(user.getFileFileName());
		userDao.updateUser(user);
		
	}

	@Override
	public void deleteUser(int id) {
		userDao.deleteUser(id);
		
	}

	@Override
	public void save(User user) {
		userDao.save(user);
		
	}

	@Override
	public boolean getUserByUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.getUserByUsername(username);
	}
	@Override
	public boolean getUserByemail(String email) {
		// TODO Auto-generated method stub
		return userDao.getUserByemail(email);
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return null;
	}
}
