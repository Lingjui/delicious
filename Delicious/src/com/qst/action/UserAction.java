package com.qst.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.qst.model.User;
import com.qst.service.UserService;

/**
 *@author Ling_jui;
 *@version 2017年1月3日
 *@type UserAction
 */
/*request请求对象，提供客户端http请求数据的访问
session会话对象，用来保存服务器与每个客户端的信息*/
@SuppressWarnings("serial")
public class UserAction extends ActionSupport{/*继承Struts里的ActionSupport*/
    private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }
    
	public UserAction() {
		//System.out.println("action-init");
	}
	private User user;
	private UserService userService;
	private String username;
	private String email;
	private File upload;
	private Date date;
	private String uploadFileName;  
    // 上传文件的描述信息  
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	//检查用户名是否存在
	public String check() throws Exception {
		boolean f = userService.getUserByUsername(username);
		String str = "";
		if(f){
			str="该昵称已被占用";
		}else{
			str="该昵称可以使用";
		}
		inputStream = new ByteArrayInputStream(str.getBytes("UTF-8"));
        return SUCCESS;
    }
	//检查邮箱是否存在
	public String checkemail() throws Exception {
		boolean f = userService.getUserByemail(email);
		String str = "";
		if(f){
			str="该邮箱已存在";
		}else{
			str="该邮箱可以注册";
		}
		inputStream = new ByteArrayInputStream(str.getBytes("UTF-8"));
        return SUCCESS;
    }

/*	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}*/

	public String login(){
		User u = userService.login(user);
		if(u != null){
			//获取request对象
			HttpServletRequest request=ServletActionContext.getRequest();
			//获取session对象
			HttpSession session=request.getSession();
			//在session中设置登录用户信息
			session.setAttribute("user", u);
			return "success";
		}else{
			return "error";
		}
	}
	
	/*public String getUserList(){
		currentPage = (currentPage == 0) ? 1 : currentPage;
		int offset = pagesize * (currentPage - 1);
		List<User> userList = userService.getUserList(offset,pagesize);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("userList", userList);
		return "success";
	}
	//ajax
	public String getAjaxUserList(){
		currentPage = (currentPage == 0) ? 1 : currentPage;
		int offset = pagesize * (currentPage - 1);
		List<User> userList = userService.getUserList(offset,pagesize);
		ajaxList = userList;
		
		return "success";
	}*/
	
	public String toUpdateUser(){
		User u = userService.getUserById(user.getId());
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("user", u);
		return "success";
	}

	
	public String updateUser(){
		/*String formatDate = new SimpleDateFormat("yy-MM-dd")
		.format(new Date());*/
		userService.updateUser(user);
		//获取request对象
		HttpServletRequest request=ServletActionContext.getRequest();
		//获取session对象
		HttpSession session=request.getSession();
		//在session中设置登录用户信息
		session.setAttribute("user", user);
		return "success";
	}
	
	/*public String deleteUser(){
		userService.deleteUser(user.getId());
		return "success";
	}*/
	
	public String saveUser(){
		userService.save(user);
		//获取request对象
		HttpServletRequest request=ServletActionContext.getRequest();
		//获取session对象
		HttpSession session=request.getSession();
		//在session中设置登录用户信息
		session.setAttribute("user", user);
		return "success";
	}
	
	
	public String updateHead(){
		//获取请求对象，服务器对象，当前的user
		User sessionUser = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		user.setPhoto(user.getFileFileName());		
		if(null == sessionUser){
			return "error";
		}
		File targetFile = new File("f:/src/usersHead/"+sessionUser.getId()+".png");
		File sourceFile = user.getFile();
		writeFileToDisk(sourceFile, targetFile);
		return "success";
		
	}
	public void getOnlineUserHead(){
		User sessionUser = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		try {
			OutputStream os = ServletActionContext.getResponse().getOutputStream();// 取得输出流  
			File sourceFile = new File("f:/src/usersHead/"+sessionUser.getId()+".png");
			FileInputStream fis = new FileInputStream(sourceFile);		
			os.write(IOUtils.toByteArray(fis));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	private void writeFileToDisk(File sourceFile,File targetFile){
				
		try {
			//建立上传文件的输入流
			FileInputStream fis = new FileInputStream(sourceFile);
			//建立上传文件的输出流
			FileOutputStream fos = new FileOutputStream(targetFile); 
			byte[] data = IOUtils.toByteArray(fis);
			IOUtils.write(data, fos);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
}

