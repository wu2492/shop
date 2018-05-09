package com.shop.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
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
	public String reg(@ModelAttribute User user){
		return "reg";
	}
	@RequestMapping(method=RequestMethod.POST,value="/regist")
	public String regist(@Valid @ModelAttribute User user,BindingResult bindingResult,
			String password1,Model model){
		if(bindingResult.hasErrors()){
			System.out.println("注册失败");
			return "reg";
		}else{
			if(!user.getPassword().equals(password1)){
				model.addAttribute("error", "两次密码不一致");
				return "reg";
			}
			userService.regist(user);
			System.out.println(user);
			return "redirect:/login";
		}
	}

}
