package com.qst.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;

import com.qst.dao.UploadMenuDao;
import com.qst.model.Menus;
import com.qst.model.UploadMenu;
import com.qst.service.UploadService;

/**
 * @author Ling_jui;
 * @version 2017Äê1ÔÂ8ÈÕ
 * @type UploadServiceImpl
 */
public class UploadServiceImpl implements UploadService{
	private UploadMenuDao uploadMenuDao;

	

	public UploadMenuDao getUploadMenuDao() {
		return uploadMenuDao;
	}



	public void setUploadMenuDao(UploadMenuDao uploadMenuDao) {
		this.uploadMenuDao = uploadMenuDao;
	}



	@Override
	public void save(UploadMenu uploadMenu) {
		// TODO Auto-generated method stub
		uploadMenuDao.save(uploadMenu);
	}
	@Override
	public List<UploadMenu> unclearMenusList(String key) {
		return uploadMenuDao.unclearMenuList(key);
	}

}
