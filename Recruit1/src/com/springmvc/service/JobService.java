package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.JobDao;
import com.springmvc.dao.Page;
import com.springmvc.entity.Company;
import com.springmvc.entity.Job;


@Transactional
@Service
public class JobService {

	@Autowired
	public JobDao jobDao;
	
	
	public List<Job> getJobByUsername(String username){
		return jobDao.getJobByUsername(username);
	}
	
	public Job getJobById(String id){
		return jobDao.getJobById(id);
	}
	
	public void deleteJobById(String id){
		 jobDao.deleteJobById(id);
	}
	/**
	 * 更新
	 * @param Company
	 */
	public List<Job> getJobs() {
		return jobDao.getJobs();
	}
	
	public void addJob(Job job){
		jobDao.addJob(job);
	}
	
	public void updateJob(Job job){
		jobDao.updateJob(job);
	}
	
	/**
     * 分页查询 
     * @param currentPage 当前页号：现在显示的页数
     * @param pageSize 每页显示的记录条数
     * @return 封闭了分页信息(包括记录集list)的Bean
     * */
    public Page queryForPage(int currentPage,int pageSize) {
        Page page = new Page();       
        //总记录数
        int allRow = jobDao.getAllRowCount();
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<Job> list = jobDao.queryForPage(offset, pageSize); 
        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
        page.setTotalRecords(allRow);
        page.setList(list);    
        return page;
    }
    
    public int ServicegetCount(){
        return jobDao.getAllRowCount();
    }
}
