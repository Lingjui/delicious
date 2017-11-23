package com.qst.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;




import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.qst.model.FileInfo;
import com.qst.service.FileService;

/**
 *@author Ling_jui;
 *@version 2017年1月6日
 *@type UploadPicAction
 */
public class UploadPicAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;  
    // 代表上传文件的File对象  
    private File upload;  
    // 上传文件名  
    private String uploadFileName;  
    // 上传文件的描述信息  
    private String description;  
    // 保存上传文件的目录，相对于WEB应用程序的根路径，在struts.xml中配置  
    private String uploadDir;  
    //作者  
    private String author;  
    //日期  
    private Date date;  
      
    private FileService fileService;  
    //保存结果  
    private String result;  
    private FileInfo fileinfo;
    private Map<String, Object> request;  
    
    public UploadPicAction(){
    	
    }   
    public String execute() throws Exception {  
    	System.out.println(123);
        // 得到保存上传文件的目录的真实路径  
        File dir = new File("F:\\upload");  
        // 如果该目录不存在，就创建  
        if (!dir.exists()) {  
            dir.mkdirs();  
        }  
        System.out.println(uploadFileName+"10");
        int pos = uploadFileName.lastIndexOf(".");  
        uploadFileName.substring(pos + 1);
        System.out.println(1);
        date = new Date();//当前日期  
        HttpServletRequest request = ServletActionContext.getRequest();
        InputStream is = new FileInputStream(upload);  
        OutputStream os = new FileOutputStream(new File(dir, uploadFileName));  
        byte[] buf = new byte[1024];  
        int len = -1;  
        while ((len = is.read(buf)) != -1) {  
            os.write(buf, 0, len);  
        }  
        is.close();  
        os.close();  
   
        setUploadDir("F:\\upload");//保存路径  
   
        if (fileService.saveFile(uploadFileName, uploadDir, author, description, date)) {  
            setResult("{suc:1, msg:’上传成功!’}");  
        } else {  
            setResult("{suc:0, msg:’上传失败!’}");  
        } 
        System.out.println("upload/"+uploadFileName);
        String image="upload/"+uploadFileName;  
        request.setAttribute("image", image); 
        
        return SUCCESS;  
    }
	public FileInfo getFileinfo() {
		return fileinfo;
	}
	public void setFileinfo(FileInfo fileinfo) {
		this.fileinfo = fileinfo;
	}
	public FileService getFileService() {
		return fileService;
	}
	public void setFileService(FileService fileService) {
		this.fileService = fileService;
	}
	public String getUploadDir() {
		return uploadDir;
	}
	public void setUploadDir(String uploadDir) {
		this.uploadDir = uploadDir;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	} 
	public void setRequest(Map<String, Object> arg0) {  
        // TODO Auto-generated method stub  
        this.request=arg0;  
    }  
}
