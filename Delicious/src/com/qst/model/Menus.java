package com.qst.model;

import java.io.File;

/**
 *@author Ling_jui;
 *@version 2017��1��10��
 *@type Menus
 */
public class Menus {
	private Integer menuid;// ��ʳID
	private String menuname;// ��ʳ����
	private String menupro;//��ʳ����
	private String menugongyi;//��ʳ����
	private String menukouwei;//��ʳ��ζ
	private String content;// ��ʳ����
	private String sharing;// ����ʱ��
	private int user;//��ʳ������	
	private String imgName;//��ʳͼƬ
	private File file;//ͼƬ�ļ�
	private String fileName;
	
	public Menus() {
		super();
	}
	public Integer getMenuid() {
		return menuid;
	}
	public void setMenuid(Integer menuid) {
		this.menuid = menuid;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public String getMenupro() {
		return menupro;
	}
	public void setMenupro(String menupro) {
		this.menupro = menupro;
	}
	public String getMenukouwei() {
		return menukouwei;
	}
	public void setMenukouwei(String menukouwei) {
		this.menukouwei = menukouwei;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getMenugongyi() {
		return menugongyi;
	}
	public void setMenugongyi(String menugongyi) {
		this.menugongyi = menugongyi;
	}
	public String getSharing() {
		return sharing;
	}
	public void setSharing(String sharing) {
		this.sharing = sharing;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
}
