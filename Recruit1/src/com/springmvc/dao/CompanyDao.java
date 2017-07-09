package com.springmvc.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Company;


@Repository
public class CompanyDao {

	
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	
	public Company getComById(String id) {
		return (Company) this.getSession().createQuery("from Company where id=?").setParameter(0, id).uniqueResult();
	}
	
	public Company getComByUsername(String username) {
		return (Company) this.getSession().createQuery("from Company where username=?").setParameter(0, username).uniqueResult();
	}
	
	public void updateCompany(Company company) {
		this.getSession().update(company);
	}
	
	public void addCompany(Company company) {
		this.getSession().save(company);
	}
	
	@SuppressWarnings("unchecked")
	public List<Company> getCompanys() {
		return this.getSession().createCriteria(Company.class).list();
	}
}
