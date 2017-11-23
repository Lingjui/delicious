package com.qst.dao.impl;

/**
 *@author Ling_jui;
 *@version 2016��12��21��
 *@type UserDaoImp
 */
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.qst.dao.UserDao;
import com.qst.model.User;

public class UserDaoImpl implements UserDao {

	public UserDaoImpl() {
	}
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void save(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}

	@Override
	public User login(User user) {
		Session session = sessionFactory.getCurrentSession();
		// �־û�����
		Query query = session.createQuery("from User u where u.username = ? and u.password = ?");
		query.setParameter(0, user.getUsername());
		query.setParameter(1, user.getPassword());
		System.out.println(user.getUsername()+user.getPassword());
		User u =  (User) query.uniqueResult();
		return u;
	}


	@SuppressWarnings("unchecked")
	public List<User> getUserList(int offset, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User");
		query.setFirstResult(offset);    
		query.setMaxResults(pagesize); 
		return query.list();
	}
	@Override
	public User getUserById(int id) {
		Session session = sessionFactory.getCurrentSession();
		// �־û�����
		Query query = session.createQuery("from User u where u.id = ?");
		query.setParameter(0, id);
		User u =  (User) query.uniqueResult();
		return u;
	}
	@Override
	public void updateUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.update(user);
	}
	@Override
	public void deleteUser(int id) {
		Session session = sessionFactory.getCurrentSession();
		//ʹ��HQL����idɾ��
		Query query = session.createQuery("delete User u where u.id = ?");
		query.setParameter(0, id);
		int i = query.executeUpdate();
		System.out.println(i);
	}

	@Override
	public boolean getUserByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User u where u.username = ?");
		query.setParameter(0, username);
		User u =  (User) query.uniqueResult();
		return u != null;
	}
	@Override
	public boolean getUserByemail(String email) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User u where u.email = ?");
		query.setParameter(0, email);
		System.out.println(query+email);
		User u =  (User) query.uniqueResult();
		/*�����ѯ���ж��ֵ���׳�����;
		�����ѯ������ֻ��һ��ֵ������һ��object;
		���ûֵ������null.*/
		return u != null;
	}
}
