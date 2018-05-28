package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entiy.Order;
import com.shop.entiy.User;
import com.shop.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
//	@Autowired
//	private CarService  carService;
	
	//跳转到订单页面
	@RequestMapping(method=RequestMethod.GET,value="/vipOrder")
	public String vipOrder(@AuthenticationPrincipal(expression="user") User curUser,Model model){
		List<Order> orders = orderService.findAll(curUser.getId());
		System.err.println(orders);
		model.addAttribute("orders", orders);
		return "vipOrder";
	}
	//根据id显示订单详情
	@RequestMapping(method=RequestMethod.GET,value="/vipXiaofei/{id}")
	public String orderDetails(@PathVariable Long id,Model model){
		Order order = orderService.orderDetails(id);
		model.addAttribute("order", order);
		return "vipXiaofei";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/createOrder")
	public String createOrder(@AuthenticationPrincipal(expression="user") User curUser,
			@RequestParam(name="carIds") List<Long> carIds,@RequestParam Long addresId,Model model){
//		List<Car> cars = carService.findIdsCar(ids);
//		model.addAttribute("cars", cars);
//		model.addAttribute("addresId", addresId);
		
		Order order = orderService.createOrder(curUser,carIds,addresId);
		model.addAttribute("order", order);
		return "success";
	}
	@RequestMapping(method=RequestMethod.GET,value="/success/{id}")
	public String success(@AuthenticationPrincipal(expression="user") User curUser,
			@PathVariable Long id,Model model){
		Order order = orderService.findOneOrder(id);
		model.addAttribute("order", order);
		return "success";
	}
	@RequestMapping(method=RequestMethod.GET,value="/orderPay/{id}")
	public String orderPay(@PathVariable Long id){
		orderService.orderPay(id);
		return "redirect:/prolist";
	}
	
	
}
