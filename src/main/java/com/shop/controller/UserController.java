package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.entiy.User;
import com.shop.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(method=RequestMethod.GET,value="/login")
	public String login(){
		return "login";
	}
	@RequestMapping(method=RequestMethod.GET,value="/regist")
	public String reg(){
		return "reg";
	}
	@RequestMapping(method=RequestMethod.POST,value="/regist")
	public String regist(@ModelAttribute User user){
		userService.regist(user);
		System.out.println(user);
		return "redirect:/login";
	}

}
