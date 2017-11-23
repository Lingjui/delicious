package com.qst.dao.impl;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.qst.dao.MenuDao;
import com.qst.model.Menus;
import com.qst.model.User;

/**
 * @author Ling_jui;
 * @version 2017年1月11日
 * @type MenuDaoImpl
 */
public class MenuDaoImpl implements MenuDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void save(Menus menus) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(menus);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Menus> getMenuList() {
		// TODO Auto-generated method stub
		User sessionUser = (User) ServletActionContext.getRequest()
				.getSession().getAttribute("user");
		Session session = sessionFactory.getCurrentSession();
		//如果上下文（在配置文件hibernate.cfg.xml里）有session就不用创建没有就新建一个session
		String hql = "from Menus m where m.user = ? order by m.id desc ";
		Query query = session.createQuery(hql);
		query.setParameter(0, sessionUser.getId());

		return query.list();
	}

	public String getRows() {
		User sessionUser = (User) ServletActionContext.getRequest()
				.getSession().getAttribute("user");
		Session session = sessionFactory.getCurrentSession();
		String hql = "select count(*) from Menus m where m.user = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, sessionUser.getId());
		System.out.println(query);		
		return query.uniqueResult().toString();
	}

}
