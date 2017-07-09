package com.springmvc.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.service.IntentionService;
import com.springmvc.service.JobService;
import com.springmvc.service.UserService;

@Controller    //使用该注解标志它是一个控制器
@RequestMapping(value = "/admin")
public class adminController {
	
	@Autowired
	public UserService userService;
	@Autowired  
    private HttpServletRequest req;  
	@Autowired
	public IntentionService intentionService;
	@Autowired
	public JobService jobService;

	@RequestMapping("/login")
	public String main(){
		return "admin/index";
	}
	
	@RequestMapping("/dologin")
	public String dologin(String username, String password, Map<String, Object> map) {
		if (username.equals("admin") && password.equals("admin")) {
			req.getSession().setAttribute("username", username);
			
			return "admin/main";
		}
		return "redirect:login";
	}
	
	@RequestMapping(value = "/intentionlist")
	public String intentionlist(Map<String, Object> map) {
		map.put("intentionlist",intentionService.getIntentions() );
		return "admin/intentionlist";
	}
	
	@RequestMapping(value = "/deleteIntentionById")
	public String deleteIntentionById(@RequestParam(value = "id") String id,String username) {
		intentionService.deleteIntentionById(id);
		return "redirect:intentionlist";
	}
	
	
	
	@RequestMapping(value = "/joblist")
	public String joblist(Map<String, Object> map) {
		map.put("joblist", jobService.getJobs());
		return "admin/joblist";
	}
	
	@RequestMapping(value = "/deleteJobById")
	public String deleteJobById(@RequestParam(value = "id") String id,String username) {
		jobService.deleteJobById(id);
		return "redirect:joblist";
	}
	
	
	@RequestMapping(value = "/userlist")
	public String userlist(Map<String, Object> map) {
		map.put("userlist", userService.getUsers());
		return "admin/userlist";
	}
	
	@RequestMapping(value = "/deleteUser")
	public String deletedeleteUser(@RequestParam(value = "id") String id,String username) {
		userService.deleteUserById(id);
		return "redirect:userlist";
	}
	
	@RequestMapping(value = "/userlist1")
	public String userlist1(Map<String, Object> map) {
		map.put("userlist", userService.getUsers());
		return "admin/userlist1";
	}
	
	@RequestMapping(value = "/deleteUser1")
	public String deletedeleteUser1(@RequestParam(value = "id") String id,String username) {
		userService.deleteUserById(id);
		return "redirect:userlist1";
	}
	
	
	@RequestMapping("/exit")  
    public String adminExit(HttpSession session){  
        session.invalidate();  
        return "admin/index";  
    }
	
	
}
