package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "company")
public class Company {

	

	private String id;// 主键id
	private String username;// 用户名名
	private String fullname;// 企业名称
	private String comtype;// 企业类型
	private String empcount;// 企业规模
	private String address;// 
	private String email;// 
	private String tel;// 
	private String manager;// 联系人
	private String description;// 企业介绍
	
	@Id
	@Column(name = "id", nullable = false, unique = true)
	@GenericGenerator(name = "generator", strategy = "uuid")
	@GeneratedValue(generator = "generator")
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Column(name = "username", nullable = false, length = 32)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	@Column(name = "fullname", nullable = true, length = 32)
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	@Column(name = "comtype", nullable = true, length = 32)
	public String getComtype() {
		return comtype;
	}
	public void setComtype(String comtype) {
		this.comtype = comtype;
	}
	
	@Column(name = "empcount", nullable = true, length = 32)
	public String getEmpcount() {
		return empcount;
	}
	public void setEmpcount(String empcount) {
		this.empcount = empcount;
	}
	
	@Column(name = "address", nullable = true, length = 32)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Column(name = "email", nullable = true, length = 32)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "tel", nullable = true, length = 32)
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Column(name = "manager", nullable = true, length = 32)
	public String getManager() {
		return manager;
	}
	
	
	public void setManager(String manager) {
		this.manager = manager;
	}
	
	@Column(name = "description", nullable = true, length = 500)
	public String getDescription() {
		return description;
	}
	
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
