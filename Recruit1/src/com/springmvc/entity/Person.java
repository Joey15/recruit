package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 个人信息实体类
 * 注解方式配置对应数据表
 * @author Peng
 * @Date3216年12月8日下午2:54:52
 */
@Entity
@Table(name = "person")
public class Person {

	private String id;// 主键id
	private String username;// 用户名名
	private String realname;//真实姓名
    private String sex;
    private String birthday;
    private String marry;//婚否
    private String degree;//学历
    private String tel;//电话
    private String email;//邮箱
    private String address;//地址
    private String jobstatus;
    private String province;//省份
    private String language;
    private String major;//专业
    
    
    @Id
	@Column(name = "id", nullable = false, unique = true)
	@GenericGenerator(name = "generator", strategy = "uuid")
	@GeneratedValue(generator = "generator")
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id = id;
	}
	
	@Column(name = "username", nullable = false, length = 32)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "realname", nullable = true, length = 32)
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	
	@Column(name = "sex", nullable = true, length = 32)
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Column(name = "birthday", nullable = true, length = 32)
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	@Column(name = "marry", nullable = true, length = 32)
	public String getMarry() {
		return marry;
	}
	public void setMarry(String marry) {
		this.marry = marry;
	}
	
	@Column(name = "degree", nullable = true, length = 32)
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	
	@Column(name = "tel", nullable = true, length = 32)
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Column(name = "email", nullable = true, length = 32)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "address", nullable = true, length = 32)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Column(name = "jobstatus", nullable = true, length = 32)
	public String getJobstatus() {
		return jobstatus;
	}
	public void setJobstatus(String jobstatus) {
		this.jobstatus = jobstatus;
	}
	
	@Column(name = "province", nullable = true, length = 32)
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	
	@Column(name = "language", nullable = true, length = 32)
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	
	
	@Column(name = "major", nullable = true, length = 32)
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
    
    
    
    
	
}
