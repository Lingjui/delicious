package com.qst.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;

import com.qst.dao.MenuDao;
import com.qst.dao.UserDao;
import com.qst.model.Menus;
import com.qst.model.User;
import com.qst.service.MenuService;

/**
 *@author Ling_jui;
 *@version 2017年1月10日
 *@type MenuServiceImpl
 */
public class MenuServiceImpl implements MenuService{
	private String fileFileName;
	private MenuDao menuDao;
	private UserDao userDao;
	public MenuDao getMenuDao() {
		return menuDao;
	}
	public void setMenuDao(MenuDao menuDao) {
		this.menuDao = menuDao;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public List<Menus> getMenuList() {
		// 查询所有美食信息
		return menuDao.getMenuList();
	}
	@Override
	public void save(Menus menus) {	
		
		menuDao.save(menus);
	}
	
	@Override
	public String getMenuRow() {	
		
		return menuDao.getRows();
	}
	
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
}
