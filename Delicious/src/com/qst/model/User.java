package com.qst.model;

import java.io.File;
import java.util.Date;



/**
 *@author Ling_jui;
 *@version 2016Äê12ÔÂ19ÈÕ
 *@type User
 */
public class User {
	private int id;	
	private String username;
	private String password;
	private int sex;
	private String birthday;
	private String job;
	private String email;
	private String sign;
	private String photo;
	private Date date;
	
	
	/*-----*/
	
	private File file;
	private String fileFileName;

	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public File getFile() {
		return file;
	}


	public void setFile(File file) {
		this.file = file;
	}


	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(int id, String username, String password, int sex,
			String birthday, String job, String email, String sign,
			String photo, File file) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.birthday = birthday;
		this.job = job;
		this.email = email;
		this.sign = sign;
		this.photo = photo;
		this.file = file;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getSex() {
		return sex;
	}


	public void setSex(int sex) {
		this.sex = sex;
	}


	public String getBirthday() {
		return birthday;
	}


	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getSign() {
		return sign;
	}


	public void setSign(String sign) {
		this.sign = sign;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getFileFileName() {
		return fileFileName;
	}


	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

}
