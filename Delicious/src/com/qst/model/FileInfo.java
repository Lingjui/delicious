package com.qst.model;

import java.io.File;
import java.util.Date;


/**
 *@author Ling_jui;
 *@version 2017��1��6��
 *@type FileInfo
 */
public class FileInfo {
	    private int id;  
	    private File doc;//����  
	    private String fileName;//����  
	    private String contentType;//����  
	    private String fileDir;//·��  
	    private Date date;//�ϴ�����  
	    private String author;//����  
	    private String description;//ע��  
	    
	    public FileInfo() {
			super();
		}
		public FileInfo(String fileName, String fileDir, String author, String description, Date date) {
			super();
			this.fileName = fileName;
			this.fileDir = fileDir;
			this.date = date;
			this.author = author;
			this.description = description;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public File getDoc() {
			return doc;
		}
		public void setDoc(File doc) {
			this.doc = doc;
		}
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
		public String getContentType() {
			return contentType;
		}
		public void setContentType(String contentType) {
			this.contentType = contentType;
		}
		public String getFileDir() {
			return fileDir;
		}
		public void setFileDir(String fileDir) {
			this.fileDir = fileDir;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public String getAuthor() {
			return author;
		}
		public void setAuthor(String author) {
			this.author = author;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
}
