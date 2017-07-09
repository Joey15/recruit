package com.springmvc.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Job;



@Repository
public class JobDao {

	
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//根据用户名查找
	public List<Job> getJobByUsername(String username) {
		
		return  this.getSession().createQuery("select job from Job job where username=?").setParameter(0, username).list();
	}
	
	public Job getJobById(String id) {
		return (Job) this.getSession().get(Job.class,id);
	}
	//删除
	public void deleteJobById(String id) {
		this.getSession().delete(this.getSession().get(Job.class,id));
	}
	//保存用户
	public void addJob(Job job) {
		this.getSession().save(job);
	}
	
	public void updateJob(Job job) {
		this.getSession().update(job);
	}
	
	@SuppressWarnings("unchecked")
	public List<Job> getJobs() {
		return this.getSession().createCriteria(Job.class).list();
	}
	
	
	//分页查询
	@SuppressWarnings("unchecked")
    public List<Job> queryForPage(int offset, int length) {
      //查询所有的记录数
      Query query= (Query) sessionFactory.getCurrentSession().createQuery("from Job");    
       query.setFirstResult(offset);
       query.setMaxResults(length);            
       return query.list(); 
      }
	
	//查询记录总数
    public int getAllRowCount(){
        int count=((Long) sessionFactory.getCurrentSession()
               .createQuery( "select count(*) from Job").iterate().next()).intValue();
        return count;  
    }
}
