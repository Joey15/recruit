package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.IntentionDao;
import com.springmvc.entity.Intention;


@Transactional
@Service
public class IntentionService {

	@Autowired
	public IntentionDao intentionDao;
	
	
	public List<Intention> getIntentionByUsername(String username){
		return intentionDao.getIntentionByUsername(username);
	}
	
	public Intention getIntentionById(String id){
		return intentionDao.getIntentionById(id);
	}
	
	public void deleteIntentionById(String id){
		 intentionDao.deleteIntentionById(id);
	}
	/**
	 * 更新
	 * @param Company
	 */
	public List<Intention> getIntentions() {
		return intentionDao.getIntentions();
	}
	
	public void addIntention(Intention intention){
		intentionDao.addIntention(intention);
	}
	
	public void updateIntention(Intention intention){
		intentionDao.updateIntention(intention);
	}
}
