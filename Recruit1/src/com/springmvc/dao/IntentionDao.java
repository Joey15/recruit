package com.springmvc.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Intention;



@Repository
public class IntentionDao {

	
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//根据用户名查找
	public List<Intention> getIntentionByUsername(String username) {
		
		return  this.getSession().createQuery("select Intention from Intention Intention where username=?").setParameter(0, username).list();
	}
	
	public Intention getIntentionById(String id) {
		return (Intention) this.getSession().get(Intention.class,id);
	}
	//删除
	public void deleteIntentionById(String id) {
		this.getSession().delete(this.getSession().get(Intention.class,id));
	}
	
	
	//保存用户
	public void addIntention(Intention intention) {
		this.getSession().save(intention);
	}
	
	public void updateIntention(Intention intention) {
		this.getSession().update(intention);
	}
	
	@SuppressWarnings("unchecked")
	public List<Intention> getIntentions() {
		return this.getSession().createCriteria(Intention.class).list();
	}
}
