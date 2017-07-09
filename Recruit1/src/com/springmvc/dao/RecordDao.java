package com.springmvc.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Record;

@Repository
public class RecordDao {

	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 根据用户名查找
	public List<Record> getRecordByPerson(String person) {

		return this.getSession().createQuery("select record from Record record where person=?").setParameter(0, person)
				.list();
	}

	public List<Record> getRecordByCompany(String company) {

		return this.getSession().createQuery("select record from Record record where company=?").setParameter(0, company)
				.list();
	}

	// 保存用户
	public void addRecord(Record record) {
		this.getSession().save(record);
	}

	
}
