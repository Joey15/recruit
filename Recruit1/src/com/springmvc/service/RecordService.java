package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.RecordDao;
import com.springmvc.entity.Record;


@Transactional
@Service
public class RecordService {

	@Autowired
	public RecordDao RecordDao;
	
	
	public List<Record> getRecordByPerson(String person){
		return RecordDao.getRecordByPerson(person);
	}
	
	public List<Record> getRecordByCompany(String company){
		return RecordDao.getRecordByCompany(company);
	}
	
	
	public void addRecord(Record record){
		RecordDao.addRecord(record);
	}
	
}
