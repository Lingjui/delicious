package com.qst.service;

import java.util.List;

import com.qst.model.Menus;



/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ10ÈÕ
 *@type MenuService
 */
public interface MenuService {

	void save(Menus menus);

	List<Menus> getMenuList();

	String getMenuRow();


}
