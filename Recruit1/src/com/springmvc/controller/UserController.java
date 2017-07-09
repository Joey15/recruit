package com.springmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.entity.Company;
import com.springmvc.entity.Person;
import com.springmvc.entity.User;
import com.springmvc.service.CompanyService;
import com.springmvc.service.JobService;
import com.springmvc.service.PersonService;
import com.springmvc.service.UserService;

@Controller // 使用该注解标志它是一个控制器
@RequestMapping(value = "/user")
public class UserController {
	@Autowired
	public JobService jobService;
	@Autowired
	public UserService userService;
	@Autowired
	private HttpServletRequest req;
	@Autowired
	public PersonService personService;
	@Autowired
	public CompanyService companyService;

	// 跳转到注册页面
	@RequestMapping("/signup")
	public String register() {
		return "register";
	}

	// 注册用户
	@RequestMapping(value = "/saveUser")
	public String saveUser(User user, Person person, Company company) {
		if (user.getStatus() == 1) {
			userService.addUser(user);
			personService.addPerson(person);
			return "resuccess";
		} else {
			userService.addUser(user);
			companyService.addCompany(company);
			return "resuccess";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String username, String password, Map<String, Object> map, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (userService.login(username, password)) {
			req.getSession().setAttribute("username", username);
			map.put("joblist", jobService.getJobs());
			return "person/main";
		} else {
			out.flush();
			out.println("<script>");
			out.println("alert('登录失败');");
			out.println("history.back();");
			out.println("</script>");
			return "index";
		}
	}

	// 企业登录
	@RequestMapping(value = "/login1", method = RequestMethod.POST)
	public String login1(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (userService.login1(username, password)) {
			req.getSession().setAttribute("username", username);
			return "company/company";
		} else {
			out.flush();
			out.println("<script>");
			out.println("alert('登录失败');");
			out.println("history.back();");
			out.println("</script>");
			return "index";
		}
	}

	@RequestMapping("/exit")
	public String userExit(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@ResponseBody
	@RequestMapping(value = "/checkUsername")
	public String checkUsername(String  username){
		User user=userService.getUserByUsername(username);
		if(user==null){
			//允许注册
			return "1";
		}else{
			//不允许注册
			return "0";
		}

	}

}
