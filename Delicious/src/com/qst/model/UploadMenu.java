package com.qst.model;

import java.io.File;
import java.util.List;

/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ7ÈÕ
 *@type UploadMenu
 */
public class UploadMenu {
	private int id;	
	private String title;
	private String gongyi;
	private String kouwei;
	private String make_diff;
	private String make_pretime;
	private String make_time;
	private String make_amount;
	private String photo;
	private String descr;
	private String sign;
	private String zlsc1;
	private String zlyl1;
	private String zlsc2;
	private String zlyl2;
	private String zlsc3;
	private String zlyl3;
	private String flsc1;
	private String flyl1;
	private String flsc2;
	private String flyl2;
	private String flsc3;
	private String flyl3;
	/*private Blob step_img;*/
	private String step_text[];
	/*private Blob step_result_img[];*/
	private String tips;
	private File myfile;
	
	public UploadMenu() {
		super();
	}
	public UploadMenu(int id, String title, String gongyi, String kouwei,
			String make_diff, String make_pretime, String make_time,
			String make_amount, String descr, String sign, String zlsc1,
			String zlyl1, String zlsc2, String zlyl2, String zlsc3,
			String zlyl3, String flsc1, String flyl1, String flsc2,
			String flyl2, String flsc3, String flyl3, String[] step_text,
			String tips) {
		super();
		this.id = id;
		this.title = title;
		this.gongyi = gongyi;
		this.kouwei = kouwei;
		this.make_diff = make_diff;
		this.make_pretime = make_pretime;
		this.make_time = make_time;
		this.make_amount = make_amount;
		this.descr = descr;
		this.sign = sign;
		this.zlsc1 = zlsc1;
		this.zlyl1 = zlyl1;
		this.zlsc2 = zlsc2;
		this.zlyl2 = zlyl2;
		this.zlsc3 = zlsc3;
		this.zlyl3 = zlyl3;
		this.flsc1 = flsc1;
		this.flyl1 = flyl1;
		this.flsc2 = flsc2;
		this.flyl2 = flyl2;
		this.flsc3 = flsc3;
		this.flyl3 = flyl3;
		this.step_text = step_text;
		this.tips = tips;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGongyi() {
		return gongyi;
	}
	public void setGongyi(String gongyi) {
		this.gongyi = gongyi;
	}
	public String getKouwei() {
		return kouwei;
	}
	public void setKouwei(String kouwei) {
		this.kouwei = kouwei;
	}
	public String getMake_diff() {
		return make_diff;
	}
	public void setMake_diff(String make_diff) {
		this.make_diff = make_diff;
	}
	public String getMake_pretime() {
		return make_pretime;
	}
	public void setMake_pretime(String make_pretime) {
		this.make_pretime = make_pretime;
	}
	public String getMake_time() {
		return make_time;
	}
	public void setMake_time(String make_time) {
		this.make_time = make_time;
	}
	public String getMake_amount() {
		return make_amount;
	}
	public void setMake_amount(String make_amount) {
		this.make_amount = make_amount;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getZlsc1() {
		return zlsc1;
	}
	public void setZlsc1(String zlsc1) {
		this.zlsc1 = zlsc1;
	}
	public String getZlyl1() {
		return zlyl1;
	}
	public void setZlyl1(String zlyl1) {
		this.zlyl1 = zlyl1;
	}
	public String getZlsc2() {
		return zlsc2;
	}
	public void setZlsc2(String zlsc2) {
		this.zlsc2 = zlsc2;
	}
	public String getZlyl2() {
		return zlyl2;
	}
	public void setZlyl2(String zlyl2) {
		this.zlyl2 = zlyl2;
	}
	public String getZlsc3() {
		return zlsc3;
	}
	public void setZlsc3(String zlsc3) {
		this.zlsc3 = zlsc3;
	}
	public String getZlyl3() {
		return zlyl3;
	}
	public void setZlyl3(String zlyl3) {
		this.zlyl3 = zlyl3;
	}
	public String getFlsc1() {
		return flsc1;
	}
	public void setFlsc1(String flsc1) {
		this.flsc1 = flsc1;
	}
	public String getFlyl1() {
		return flyl1;
	}
	public void setFlyl1(String flyl1) {
		this.flyl1 = flyl1;
	}
	public String getFlsc2() {
		return flsc2;
	}
	public void setFlsc2(String flsc2) {
		this.flsc2 = flsc2;
	}
	public String getFlyl2() {
		return flyl2;
	}
	public void setFlyl2(String flyl2) {
		this.flyl2 = flyl2;
	}
	public String getFlsc3() {
		return flsc3;
	}
	public void setFlsc3(String flsc3) {
		this.flsc3 = flsc3;
	}
	public String getFlyl3() {
		return flyl3;
	}
	public void setFlyl3(String flyl3) {
		this.flyl3 = flyl3;
	}
	public String[] getStep_text() {
		return step_text;
	}
	public void setStep_text(String[] step_text) {
		this.step_text = step_text;
	}
	public String getTips() {
		return tips;
	}
	public void setTips(String tips) {
		this.tips = tips;
	}
	public File getMyfile() {
		return myfile;
	}
	public void setMyfile(File myfile) {
		this.myfile = myfile;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}	
}
