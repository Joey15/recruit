package com.springmvc.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.PersonDAO;
import com.springmvc.entity.Person;

@Transactional
@Service
public class PersonService {

	@Autowired
	public PersonDAO personDAO;
	
	/**
	 * 添加
	 * @param person
	 */
	public void addPerson(Person person) {
		personDAO.addPerson(person);
	}
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Person getPersonById(String id){
		return personDAO.getPersonById(id);
	}
	public Person getPersonByUsername(String username){
		return personDAO.getPersonByUsername(username);
	}
	/**
	 * 更新
	 * @param person
	 */
	public void updatePerson(Person person) {
		personDAO.updatePerson(person);
	}
	/**
	 * 删除
	 * @param id
	 */
	public void deletePersonById(String  id) {
		personDAO.deletePersonById(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public List<Person> getPersons() {
		return personDAO.getPersons();
	}
}
