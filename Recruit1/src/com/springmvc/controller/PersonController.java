package com.springmvc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springmvc.dao.Page;
import com.springmvc.entity.Intention;
import com.springmvc.entity.Job;
import com.springmvc.entity.Person;
import com.springmvc.entity.Record;
import com.springmvc.service.CompanyService;
import com.springmvc.service.IntentionService;
import com.springmvc.service.JobService;
import com.springmvc.service.PersonService;
import com.springmvc.service.RecordService;



/**
 * controller
 * @author //标识它是一个控制器
 * @Date2016年12月9日上午11:25:40
 */
@Controller    //使用该注解标志它是一个控制器
@RequestMapping(value = "/person")
public class PersonController {

	@Autowired
	public PersonService personService;
	@Autowired
	public IntentionService intentionService;
	@Autowired
	public JobService jobService;
	@Autowired
	public CompanyService companyService;
	@Autowired
	public RecordService recordService;
	@Autowired
	private HttpServletRequest req;

	
	@RequestMapping("/main")
	public String main(Map<String, Object> map){
		map.put("joblist", jobService.getJobs());
		return "person/main";
	}
	
	
	//跳转到个人信息页面
	@RequestMapping("/info")
	public String info(@RequestParam(value = "username") String username, Model model){
		model.addAttribute("person", personService.getPersonByUsername(username));
		return "person/personinfo";
	}
	//跳转到编辑个人信息页面
	@RequestMapping("/info1")
	public String info1(@RequestParam(value = "id") String id, Model model){
		model.addAttribute("person", personService.getPersonById(id));
		return "person/personupdate";
	}
	//更新个人信息
	@RequestMapping(value = "/updateperson")
	public String updateperson(Person person) {
		System.out.println(person.toString());
		personService.updatePerson(person);
		return "person/personinfo";
	}
	
	@RequestMapping(value = "/intention")
	public String recruit() {
		return "person/intention";
	}
	
	
	@RequestMapping(value = "/addIntention")
	public String addIntention(Map<String, Object> map,Intention intention) {
		intentionService.addIntention(intention);
		String us = (String) req.getSession().getAttribute("username");
		map.put("intentionlist", intentionService.getIntentionByUsername(us));
		return "person/manage";
	}
	
	@RequestMapping(value = "/manage")
	public String manage(Map<String, Object> map,String username) {
		map.put("intentionlist", intentionService.getIntentionByUsername(username));
		return "person/manage";
	}
	
	@RequestMapping(value = "/deleteIntentionById")
	public String deleteIntentionById(@RequestParam(value = "id") String id,Map<String, Object> map) {
		intentionService.deleteIntentionById(id);
		String us = (String) req.getSession().getAttribute("username");
		map.put("intentionlist", intentionService.getIntentionByUsername(us));
		return "person/manage";
	}
	
	//职位列表查看
	@RequestMapping(value = "/joblist")
	public String findAll(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {   
        String pageNo = request.getParameter("pageNo");
        if (pageNo == null) {
            pageNo = "1";
        }
        Page page = jobService.queryForPage(Integer.valueOf(pageNo), 7);
        request.setAttribute("page", page);
        List<Job> list = page.getList();
        modelMap.put("list", list);
        return "person/joblist";
	}
	
	
	
	//职位列表查看
//	@RequestMapping(value = "/joblist")
//	public String joblist(Map<String, Object> map) {
//		map.put("joblist", jobService.getJobs());
//		return "person/joblist";
//	}
	
	
	
	
	
	//查看工作
	@RequestMapping(value = "/more")
	public String jobdetails(Map<String, Object> map,String id,String username) {
		map.put("job", jobService.getJobById(id));
		map.put("company", companyService.getCompanyByUsername(username));
		return "person/jobdetails";
	}
	
	
	@RequestMapping(value = "/record")
	public String jobdetails(Map<String, Object> map,String person) {
		map.put("recordlist", recordService.getRecordByPerson(person));
		return "person/recordlist";
	}
	
	@RequestMapping(value = "/apply")
	public String apply(Record record,Map<String, Object> map) {
		recordService.addRecord(record);
		String us = (String) req.getSession().getAttribute("username");
		map.put("recordlist", recordService.getRecordByPerson(us));
		return "person/recordlist";
	}
	
}
