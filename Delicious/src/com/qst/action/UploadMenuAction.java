package com.qst.action;

import java.io.File;


import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.qst.model.Menus;
import com.qst.model.UploadMenu;
import com.qst.model.User;
import com.qst.service.UploadService;

/**
 * @author Ling_jui;
 * @version 2017年1月8日
 * @type UploadMenu
 */
public class UploadMenuAction extends ActionSupport {
	private static final long serialVersionUID = 572146812454l;
	private File myfile;
	private String myfileFileName;
	private User user;
	private UploadMenu uploadMenu;
	private UploadService uploadService;
	private String date;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UploadMenu getUploadMenu() {
		return uploadMenu;
	}

	public void setUploadMenu(UploadMenu uploadMenu) {
		this.uploadMenu = uploadMenu;
	}

	public UploadService getUploadService() {
		return uploadService;
	}

	public void setUploadService(UploadService uploadService) {
		this.uploadService = uploadService;
	}

	public String saveMenu() {
		uploadMenu.setPhoto("upload2/" + myfileFileName);
		uploadService.save(uploadMenu);	
		String savepath = ServletActionContext.getServletContext().getRealPath("/upload2/"+myfileFileName);
		System.out.println(savepath);
		try {
			byte[] data = IOUtils.toByteArray(new FileInputStream(myfile));
			FileOutputStream fos = new FileOutputStream(savepath);
			IOUtils.write(data,fos);
			fos.flush();
			fos.close();		
		} catch (Exception e) {
			e.printStackTrace();
		}			
		//获取request对象
		HttpServletRequest request=ServletActionContext.getRequest();
		//获取session对象
		HttpSession session=request.getSession();
		//在session中设置登录用户信息
		session.setAttribute("uploadMenu", uploadMenu);
		return "success";
	}
//	模糊查询
	public String unclearMenusList(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String key=request.getParameter("keyword");
		List<UploadMenu> list=uploadService.unclearMenusList(key);
		request.setAttribute("list", list);
		   if(list!=null){
		    return "success";
		}else{
			return "error";
		}
	}
	public File getMyfile() {
		return myfile;
	}

	public void setMyfile(File myfile) {
		this.myfile = myfile;
	}

	public String getMyfileFileName() {
		return myfileFileName;
	}

	public void setMyfileFileName(String myfileFileName) {
		this.myfileFileName = myfileFileName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
