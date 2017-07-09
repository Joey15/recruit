package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.UserDao;
import com.springmvc.entity.User;

@Transactional
@Service
public class UserService {
	
	@Autowired
	public UserDao userDao;
	
	/**
	 * 添加
	 * @param User
	 */
	public void addUser(User user) {
		userDao.addUser(user);
		
	}
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public User getUserById(String id){
		return userDao.getUserById(id);
	}
	
	public User getUserByUsername(String username){
		return userDao.getUserByUsername(username);
	}
	/**
	 * 更新
	 * @param User
	 */
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	/**
	 * 删除
	 * @param id
	 */
	public void deleteUserById(String id) {
		userDao.deleteUserById(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public List<User> getUsers() {
		return userDao.getUsers();
	}
	
	//个人登录
	public boolean login(String username, String password) {
        // TODO Auto-generated method stub
        boolean login = userDao.login(username, password);
        if(login){
            return true;
        }else{
            return false;
        }
    }
	
	//企业登录
	public boolean login1(String username, String password) {
        // TODO Auto-generated method stub
        boolean login = userDao.login1(username, password);
        if(login){
            return true;
        }else{
            return false;
        }
    }
}
