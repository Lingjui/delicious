package com.qst.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.qst.dao.UploadMenuDao;
import com.qst.model.Menus;
import com.qst.model.UploadMenu;

/**
 *@author Ling_jui;
 *@version 2017Äê1ÔÂ8ÈÕ
 *@type UploadMenuDaoImpl
 */
public class UploadMenuDaoImpl implements UploadMenuDao{

	public UploadMenuDaoImpl(){
		
	}
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void save(UploadMenu uploadMenu) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(uploadMenu);
	}
	@Override
	public List<UploadMenu> unclearMenuList(String key) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		String hql="from UploadMenu where title like '%"+key+"%'";
		Query query=session.createQuery(hql);
		List<UploadMenu> list=query.list();
		for(UploadMenu uploadmenu:list){
			System.out.println(uploadmenu.getTitle());
		}		
		return list;
	}
}
