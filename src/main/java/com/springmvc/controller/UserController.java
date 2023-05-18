package com.springmvc.controller;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.dao.UserDao;
import com.springmvc.entity.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userDao;
	
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/register")
	public String signup() {
		return "register";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(path ="/createUser", method= RequestMethod.POST)
	public String registerUser(@ModelAttribute User user,HttpSession session) {
		
		userDao.saveUser(user);
		
		session.setAttribute("msg", "User Register Successfully");
//		System.out.println(user);
//		return "success";
		return "redirect:/register";
		
	}
	
	@RequestMapping(path ="/userLogin",method = RequestMethod.POST)
	public String userLogin(@RequestParam("email")String em,
			@RequestParam("password")String pwd,HttpSession session) {
		User user=userDao.loginUser(em,pwd);
		
		if(user != null) {
			session.setAttribute("loginuser", user);
			return "profile";
		}else {
		session.setAttribute("msg", "Invalid Email & Password");
		return "redirect:/login";
		}
	}
	@RequestMapping("/myProfile")
	public String myProfile() {
		return "profile";
	}


}