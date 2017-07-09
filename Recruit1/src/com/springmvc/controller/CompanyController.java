package com.springmvc.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.entity.Company;
import com.springmvc.entity.Job;
import com.springmvc.entity.User;
import com.springmvc.service.CompanyService;
import com.springmvc.service.IntentionService;
import com.springmvc.service.JobService;
import com.springmvc.service.PersonService;
import com.springmvc.service.RecordService;
import com.springmvc.service.UserService;


@Controller    //使用该注解标志它是一个控制器
@RequestMapping(value = "/com")
public class CompanyController {
	
	@Autowired
	public PersonService personService;
	@Autowired
	public CompanyService companyService;
	@Autowired
	public JobService jobService;
	@Autowired
	private HttpServletRequest req;
	@Autowired
	public IntentionService intentionService;
	@Autowired
	public RecordService recordService;

	//首页
	@RequestMapping("/main")
	public String main(){
		return "company/company";
	}
	
	@RequestMapping(value = "/recruit")
	public String recruit() {
		
		return "company/recruit";
	}
	
	
	//跳转到企业信息页面
	@RequestMapping("/info")
	public String info(@RequestParam(value = "username") String username, Model model){
		model.addAttribute("company", companyService.getCompanyByUsername(username));
		return "company/cominfo";
	}
	//跳转到编辑企业信息页面
	@RequestMapping("/info1")
	public String info1(@RequestParam(value = "id") String id, Model model){
		model.addAttribute("company", companyService.getCompanyById(id));
		return "company/comupdate";
	}
	
	
	//更新企业信息
	@RequestMapping(value = "/updatecompany")
	public String updateCompany(Company company) {
		System.out.println(company.toString());
		companyService.updateCompany(company);
		return "company/cominfo";
	}
	
	
	
	@RequestMapping(value = "/addjob")
	public String addjob(Job job,Map<String, Object> map) {
		jobService.addJob(job);
		String us = (String) req.getSession().getAttribute("username");
		map.put("joblist", jobService.getJobByUsername(us));
		return "company/jobmanage";
	}
	
	
	//招聘信息管理
	@RequestMapping(value = "/manage")
	public String manage(Map<String, Object> map,String username) {
		map.put("joblist", jobService.getJobByUsername(username));
		return "company/jobmanage";
	}
	
	@RequestMapping(value = "/deleteJobById")
	public String deleteJobById(@RequestParam(value = "id") String id,Map<String, Object> map) {
		jobService.deleteJobById(id);
		String us = (String) req.getSession().getAttribute("username");
		map.put("joblist", jobService.getJobByUsername(us));
		return "company/jobmanage";
	}
	
	@RequestMapping(value = "/doupdate")
	public String doupdate(@RequestParam(value = "id") String id, Model model) {
		model.addAttribute("job", jobService.getJobById(id));
		return "company/jobupdate";
	}
	
	@RequestMapping(value = "/updatejob")
	public String updatejob(Job job,Map<String, Object> map) {
		jobService.updateJob(job);
		String us = (String) req.getSession().getAttribute("username");
		map.put("joblist", jobService.getJobByUsername(us));
		return "company/jobmanage";
	}
	
	@RequestMapping(value = "/intentionlist")
	public String intentionlist(Map<String, Object> map) {
		map.put("intentionlist",intentionService.getIntentions() );
		return "company/intentionlist";
	}
	
	@RequestMapping(value = "/record")
	public String jobdetails(Map<String, Object> map,String company) {
		map.put("recordlist", recordService.getRecordByCompany(company));
		return "company/recordlist";
	}
	
	@RequestMapping("/personinfo")
	public String personinfo(@RequestParam(value = "username") String username, Model model){
		model.addAttribute("person", personService.getPersonByUsername(username));
		return "company/personinfo";
	}
}