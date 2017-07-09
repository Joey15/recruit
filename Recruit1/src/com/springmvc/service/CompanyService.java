package com.springmvc.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.CompanyDao;
import com.springmvc.entity.Company;

@Transactional
@Service
public class CompanyService {

	@Autowired
	public CompanyDao companyDao;
	
	/**
	 * 添加
	 * @param Company
	 */
	public void addCompany(Company company) {
		companyDao.addCompany(company);
	}
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Company getCompanyById(String id){
		return companyDao.getComById(id);
	}
	public Company getCompanyByUsername(String username){
		return companyDao.getComByUsername(username);
	}
	/**
	 * 更新
	 * @param Company
	 */
	public void updateCompany(Company company) {
		companyDao.updateCompany(company);
	}
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<Company> getCompanys() {
		return companyDao.getCompanys();
	}
}
