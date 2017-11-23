package com.qst.dao;

import java.util.Date;



/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ6ÈÕ
 *@type FileDao
 */
public interface FileDao {

	boolean save(String fileName, String fileDir, String author,
			String description, Date date);

	
}
