package com.qst.dao;

import java.util.List;

import com.qst.model.Menus;

/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ10ÈÕ
 *@type MenuDao
 */
public interface MenuDao {

	void save(Menus menus);
	
	List<Menus> getMenuList();

	String getRows();

	
}
