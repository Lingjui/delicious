package com.qst.dao;

import java.util.List;


import com.qst.model.UploadMenu;

/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ8ÈÕ
 *@type UploadMenuDao
 */
public interface UploadMenuDao {

	void save(UploadMenu uploadMenu);
	List<UploadMenu> unclearMenuList(String key);
}
