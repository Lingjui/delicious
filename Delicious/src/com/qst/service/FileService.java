package com.qst.service;

import java.util.Date;



/**
 *@author Ling_jui;
 *@version 2017��1��6��
 *@type FileService
 */
public interface FileService {
	boolean saveFile(String fileName, String fileDir, String author,
			String description, Date date);
}
