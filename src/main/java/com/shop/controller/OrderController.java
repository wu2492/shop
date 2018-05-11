package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.entiy.Order;
import com.shop.entiy.User;
import com.shop.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(method=RequestMethod.GET,value="/vipOrder")
	public String vipOrder(@AuthenticationPrincipal(expression="user") User curUser,Model model){
		List<Order> orders = orderService.findAll(curUser.getId());
		model.addAttribute("orders", orders);
		return "vipOrder";
	}
	
}
