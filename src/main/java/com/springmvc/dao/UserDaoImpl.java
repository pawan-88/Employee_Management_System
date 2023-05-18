package com.springmvc.dao;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.entity.User;
@Transactional
@Repository("userDaoImp")
public class UserDaoImpl implements UserDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

//	@Transactional
//	public int save(User user) {
//		int i = (int) hibernateTemplate.save(user);
//		return i;
//	}
	
	
	
	@Override
	public int saveUser(User user) {
		int i =(int) hibernateTemplate.save(user);
		return i;
	}

//	public User loginUser(String email, String password) {
//	    String query = "from User where email=:em and password=:pwd";
//	    HibernateCallback<User> callback = new HibernateCallback<User>() {
//	        @Override
//	        public User doInHibernate(Session session) throws HibernateException {
//	            Query<User> q = session.createQuery(query, User.class);
//	            q.setParameter("em", email);
//	            q.setParameter("pwd", password);
//	            return q.uniqueResult();
//	        }
//	    };
//	    return hibernateTemplate.execute(callback);
//	}
//	@SuppressWarnings("deprecation")
//	public User loginUser(String email, String password) {
//		final String query = "from User where email=:em and password:pwd";
//		User us =(User) hibernateTemplate.execute(s->{
//			Query q = s.createQuery(query);
//			q.setString("em", email);
//			q.setString("pwd", password);
//			return q.uniqueResult();
//		}); 
//		return us;
	
	public User loginUser(String email, String passsword) {
		
		String sql = "from User where email=:em and password=:pwd";

		User us = (User) hibernateTemplate.execute(s -> {

			Query q = s.createQuery(sql);
			q.setString("em", email);
			q.setString("pwd", passsword);
			return q.uniqueResult();
		});

		return us;
		
	}
}
