package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entiy.Addres;
import com.shop.entiy.User;
import com.shop.service.AddresService;

@Controller
public class AddresController {
	
	@Autowired
	private AddresService addresService;
	
	//进入收货地址
	@RequestMapping(method=RequestMethod.GET,value="/vipAddress")
	public String addres(@AuthenticationPrincipal(expression="user") User curUser,Model model){
//		System.out.println(curUser)
		List<Addres> address = addresService.findAll(curUser.getId());
		model.addAttribute("address", address);
//		System.out.println(address);
		return "vipAddress";
	}
	//修改地址Ajax
	@RequestMapping(method=RequestMethod.POST,value="/updateAddres")
	public @ResponseBody
	Addres updateAddres(@RequestBody Addres addres1,Model method){
//		System.err.println(addres1.getId());
		Addres addres = addresService.findIdOneAddres(addres1.getId());
//		method.addAttribute("addres", addres);
		return addres;
	}
	@RequestMapping(method=RequestMethod.POST,value="/vipAddress")
	public String AddUpdateAddres(@ModelAttribute Addres addres,@AuthenticationPrincipal(expression="user")User user){
		addres.setUser(user);
		System.err.println(addres.getId());
		if(addres.getId()==null){
			addresService.addAddres(addres);
		}else{
			addresService.updateAddres(addres);
		}
		return "redirect:/vipAddress";
	}
	

}
