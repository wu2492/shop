package com.shop.controller;

import java.io.File;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.entiy.PersonalCenter;
import com.shop.entiy.User;
import com.shop.service.PersonalCenterService;
import com.shop.service.UserService;

@Controller
public class UserController {
	
	private final String filePath = "D:/wubiao/upload";
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PersonalCenterService personalCenterService;

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
	
	@RequestMapping(method=RequestMethod.GET,value="/vip")
	public String vip(@AuthenticationPrincipal(expression="user") User curUser,Model model){
		PersonalCenter personalCenter = personalCenterService.findOneConterDetails(curUser.getId());
		model.addAttribute("personalCenter", personalCenter);
		return "vip";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/vip-update")
	public String vipUpdate(@AuthenticationPrincipal(expression="user") User curUser,@ModelAttribute PersonalCenter personalCenter,String email){
		personalCenter.setUser(curUser);
		if(personalCenter.getPortrait().getSize()!=0){
			try {
				String fileName = System.currentTimeMillis()+personalCenter.getPortrait().getOriginalFilename();
				personalCenter.getPortrait().transferTo(new File(filePath, fileName));
				personalCenter.setPortraitUrl(fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(personalCenter.getId()==null)
			personalCenterService.createPersonalCenter(personalCenter);
		else
			personalCenterService.updatePersonalCenter(personalCenter);
		curUser.seteMail(email);
		userService.updateEmail(curUser);
		
		return "redirect:/vip";
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/updatePassword")
	public String vipPwd(){
		return "vipPwd";
	}
	@RequestMapping(method=RequestMethod.POST,value="/updatePassword")
	public String updatePassword(@AuthenticationPrincipal(expression="user") User curUser,
					String userpassword,String userpassword2,Model model){
		if(userpassword!=null&&userpassword.equals(userpassword2)){
			userService.updatePassword(curUser,userpassword);
		}else{
			String error = "";
			if(userpassword==null)
				error="新密码不能为空";
			else
				error="两次密码不一致";
			model.addAttribute("error", error);
			model.addAttribute("userpassword", userpassword);
			model.addAttribute("userpassword2", userpassword2);
			return "vipPwd";
		}
		
		return "redirect:/updatePassword";
	}
	

}
