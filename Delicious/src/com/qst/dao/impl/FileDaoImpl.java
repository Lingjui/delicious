package com.qst.dao.impl;


import java.util.Date;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.qst.dao.FileDao;
import com.qst.model.FileInfo;

/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ6ÈÕ
 *@type FileDaoImpl
 */
public class FileDaoImpl extends HibernateDaoSupport implements FileDao{

	public boolean save(String fileName, String fileDir, String author, String description, Date date) {  
        FileInfo rs = new FileInfo();  
        rs.setAuthor(author);  
        rs.setDescription(description);  
        rs.setFileDir(fileDir);  
        rs.setFileName(fileName);  
        rs.setDate(date);  
   
        try {  
            getHibernateTemplate().save(rs);  
            return true;  
        } catch (Exception e) {  
            e.printStackTrace();  
            return false;  
        }  
    }  
}
