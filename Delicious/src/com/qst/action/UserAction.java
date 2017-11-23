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
 *@version 2017��1��3��
 *@type UserAction
 */
/*request��������ṩ�ͻ���http�������ݵķ���
session�Ự�������������������ÿ���ͻ��˵���Ϣ*/
@SuppressWarnings("serial")
public class UserAction extends ActionSupport{/*�̳�Struts���ActionSupport*/
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
    // �ϴ��ļ���������Ϣ  
	
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

	//����û����Ƿ����
	public String check() throws Exception {
		boolean f = userService.getUserByUsername(username);
		String str = "";
		if(f){
			str="���ǳ��ѱ�ռ��";
		}else{
			str="���ǳƿ���ʹ��";
		}
		inputStream = new ByteArrayInputStream(str.getBytes("UTF-8"));
        return SUCCESS;
    }
	//��������Ƿ����
	public String checkemail() throws Exception {
		boolean f = userService.getUserByemail(email);
		String str = "";
		if(f){
			str="�������Ѵ���";
		}else{
			str="���������ע��";
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
			//��ȡrequest����
			HttpServletRequest request=ServletActionContext.getRequest();
			//��ȡsession����
			HttpSession session=request.getSession();
			//��session�����õ�¼�û���Ϣ
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
		//��ȡrequest����
		HttpServletRequest request=ServletActionContext.getRequest();
		//��ȡsession����
		HttpSession session=request.getSession();
		//��session�����õ�¼�û���Ϣ
		session.setAttribute("user", user);
		return "success";
	}
	
	/*public String deleteUser(){
		userService.deleteUser(user.getId());
		return "success";
	}*/
	
	public String saveUser(){
		userService.save(user);
		//��ȡrequest����
		HttpServletRequest request=ServletActionContext.getRequest();
		//��ȡsession����
		HttpSession session=request.getSession();
		//��session�����õ�¼�û���Ϣ
		session.setAttribute("user", user);
		return "success";
	}
	
	
	public String updateHead(){
		//��ȡ������󣬷��������󣬵�ǰ��user
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
			OutputStream os = ServletActionContext.getResponse().getOutputStream();// ȡ�������  
			File sourceFile = new File("f:/src/usersHead/"+sessionUser.getId()+".png");
			FileInputStream fis = new FileInputStream(sourceFile);		
			os.write(IOUtils.toByteArray(fis));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	private void writeFileToDisk(File sourceFile,File targetFile){
				
		try {
			//�����ϴ��ļ���������
			FileInputStream fis = new FileInputStream(sourceFile);
			//�����ϴ��ļ��������
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

