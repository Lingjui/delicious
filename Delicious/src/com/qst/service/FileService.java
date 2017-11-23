package com.qst.service;

import java.util.Date;



/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ6ÈÕ
 *@type FileService
 */
public interface FileService {
	boolean saveFile(String fileName, String fileDir, String author,
			String description, Date date);
}
