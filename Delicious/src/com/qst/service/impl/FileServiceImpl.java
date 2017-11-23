package com.qst.service.impl;


import java.util.Date;

import com.qst.dao.FileDao;
import com.qst.service.FileService;

/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ6ÈÕ
 *@type FileServiceImpl
 */
public  class FileServiceImpl implements FileService {  
    private FileDao fileDao;  
    public FileDao getFileDao() {
		return fileDao;
	}
	public void setFileDao(FileDao fileDao) {
		this.fileDao = fileDao;
	}
	
	@Override
    public boolean saveFile(String fileName, String fileDir, String author, String description, Date date) {  
        if (fileDao.save(fileName, fileDir, author, description, date)) {  
            return true;  
        } else {  
            return false;  
        }  
    }
}  
