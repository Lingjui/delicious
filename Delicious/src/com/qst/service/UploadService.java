package com.qst.service;

import java.util.List;

import com.qst.model.Menus;
import com.qst.model.UploadMenu;

/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ8ÈÕ
 *@type UploadService
 */
public interface UploadService {
	void save(UploadMenu uploadMenu);

	List<UploadMenu> unclearMenusList(String key);
}
