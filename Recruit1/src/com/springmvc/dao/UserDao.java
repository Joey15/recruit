package com.springmvc.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Person;
import com.springmvc.entity.User;

@Repository
public class UserDao {
	

	@Resource
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	
	public User getUserById(String id){
		return (User) this.getSession().get(User.class,id);
		
	}
//	public User getUserById(String id) {
//		return (User) this.getSession().createQuery("from User where id=?").setParameter(0, id).uniqueResult();
//	}
	/**
	 * 添加
	 * @param User
	 */
	public void addUser(User user) {
		this.getSession().save(user);
	}
	/**
	 * 更新
	 * @param User
	 */
	public void updateUser(User user) {
		this.getSession().update(user);
	}
	/**
	 * 删除
	 * @param id
	 */
	public void deleteUserById(String id) {
		this.getSession().delete(this.getSession().get(User.class,id));
	
	}
//	public void deleteUserById(String id) {
//		this.getSession().createQuery("delete User where id=?").setParameter(0, id).executeUpdate();
//	}
	/**
	 * 查询所有
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return this.getSession().createCriteria(User.class).list();
	}

	
	public boolean login(String username, String password) {
        // TODO Auto-generated method stub
        if(username==null){
            username="";
        }
        if(password==null){
            password="";
        }
        List<User> list = null;
        String hql="select user.username ,user.password from User as user "
        		+ "where user.username='"+username+"' and user.password = '"+password+"' and user.status=1";
        
        try {
            list = this.getSession().createQuery(hql).list();
            
        } catch (DataAccessException e) {
            // TODO: handle exception
            return false;
        }
        
        if(list.isEmpty()){
            return false;
        }
            return true;
    }
	
	public boolean login1(String username, String password) {
        // TODO Auto-generated method stub
        if(username==null){
            username="";
        }
        if(password==null){
            password="";
        }
        List<User> list = null;
        String hql="select user.username ,user.password from User as user "
        		+ "where user.username='"+username+"' and user.password = '"+password+"'and user.status=2";
        
        try {
            list = this.getSession().createQuery(hql).list();
            
        } catch (DataAccessException e) {
            // TODO: handle exception
            return false;
        }
        
        if(list.isEmpty()){
            return false;
        }
            return true;
    }
	
	
	public User getUserByUsername(String username){
		return (User) this.getSession().createQuery("from User where username=?").setParameter(0, username).uniqueResult();
	}
	
	
}
