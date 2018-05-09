package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entiy.Pro;
import com.shop.entiy.Sort;
import com.shop.service.ProService;
import com.shop.service.SortService;

@Controller
public class ProController {
	
	@Autowired
	private ProService proService;
	@Autowired
	private SortService sortService;
	
	@RequestMapping(method=RequestMethod.GET,value="/prolist")
	public String prolist(){
//		proService.findAll();
		return "prolist";
	}
	@RequestMapping(method=RequestMethod.GET,value="/product-new")
	public String createPro(@ModelAttribute Pro pro,@RequestParam(required=false)String sortId){
//		proService.findAll();
		System.out.println(sortId);
		System.out.println(pro);
		proService.createPro(pro,sortId);
		return "redirect:/prolist";
	}
	@RequestMapping(method=RequestMethod.GET,value="/product")
	public String product(Model model){
		List<Sort> sorts = sortService.findAll();
		model.addAttribute("sorts", sorts);
		return "vip-product";
	}
	
	
}
