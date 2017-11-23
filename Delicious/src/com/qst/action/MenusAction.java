package com.qst.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;

import com.qst.dao.MenuDao;
import com.qst.dao.UserDao;
import com.qst.model.Menus;
import com.qst.model.User;
import com.qst.service.MenuService;

/**
 * @author Ling_jui;
 * @version 2017��1��11��
 * @type MenusAction
 */
public class MenusAction {
	private MenuDao menuDao;
	private UserDao userDao;
	private MenuService menuService;
	private Menus menus;
	// �ύ������file������
	private File file;
	private String fileFileName;

	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}

	public MenuDao getMenuDao() {
		return menuDao;
	}

	public void setMenuDao(MenuDao menuDao) {
		this.menuDao = menuDao;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public Menus getMenus() {
		return menus;
	}

	public void setMenus(Menus menus) {
		this.menus = menus;
	}

	// ������ʳ��Ϣ
	public String addMenu() {
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		String formatDate = new SimpleDateFormat("yyyy-MM-dd")
				.format(new Date());
		System.out.println("fileFileName: " + fileFileName);
		// �������ݿ��¼��targetFile
		System.out.println(fileFileName);
		menus.setSharing(formatDate);
		menus.setImgName("upload/" + fileFileName);
		// ����targetFile
		menus.setUser(user.getId());
		menuService.save(menus);
		// ���ϴ����ļ��ŵ�ָ����·����
		String savepath = ServletActionContext.getServletContext().getRealPath(
				"/upload/" + fileFileName);
		try {
			//д��ָ����·����  
			//��һ��FileInputStreamת����һ��byte[] ��������ת�����ֽ���
			byte[] data = IOUtils.toByteArray(new FileInputStream(file));
			FileOutputStream fos = new FileOutputStream(savepath);
			IOUtils.write(data, fos);
			fos.flush();
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("menus", menus);
		return "success";
	}

	/*
	 * public void getImg(){
	 * 
	 * try { String savepath =
	 * ServletActionContext.getServletContext().getRealPath
	 * ("/upload/"+menus.getImgName()); InputStream fos = new
	 * FileInputStream(savepath);
	 * ServletActionContext.getResponse().getOutputStream
	 * ().write(IOUtils.toByteArray(fos)); } catch (Exception e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); }
	 * 
	 * }
	 */
	// ��ȡ������ʳ
	public String getMenuList() {
		List<Menus> menuList = menuService.getMenuList();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("menuList", menuList);
		return "success";
	}

	public String getMenuRow() {
		String row=menuService.getMenuRow();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("row", row);
		return "success";
	}

	
	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}
}
