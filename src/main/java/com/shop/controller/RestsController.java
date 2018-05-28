package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RestsController {

	@RequestMapping(method=RequestMethod.GET,value="/buy")
	public String buy(){
		return "buy";
	}
	@RequestMapping(method=RequestMethod.GET,value="/sell")
	public String sell(){
		return "sell";
	}
	@RequestMapping(method=RequestMethod.GET,value="/xuanshang")
	public String xuanshang(){
		return "xuanshang";
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/help")
	public String help(){
		return "help";
	}
	
	
	
}
