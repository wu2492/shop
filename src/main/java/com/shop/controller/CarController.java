package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entiy.Addres;
import com.shop.entiy.Car;
import com.shop.entiy.Pro;
import com.shop.entiy.User;
import com.shop.service.AddresService;
import com.shop.service.CarService;

@Controller
public class CarController {
	
	@Autowired
	private AddresService addresService;
	@Autowired
	private CarService  carService;
	
	@RequestMapping(method=RequestMethod.GET,value="/car")
	public String findCar(@AuthenticationPrincipal(expression="user") User curUser,Model model){
		List<Addres> address = addresService.findAll(curUser.getId());
		model.addAttribute("address", address);
		List<Car> cars = carService.findAll(curUser.getId());
		model.addAttribute("cars", cars);
		return "car";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/minus")
	public @ResponseBody
	Car minus(@AuthenticationPrincipal(expression="user") User curUser,@RequestBody Car car){
		if(car.getCount()<=1){
			carService.deleteCar(car.getId());
		}else
			carService.minusCount(car.getId());
		return carService.findOneCar(car.getId());
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/addCarCount")
	public @ResponseBody
	Car addCarCount(@AuthenticationPrincipal(expression="user") User curUser,@RequestBody Car car){
		System.err.println(car);
		carService.addCarCount(car.getId());
		return carService.findOneCar(car.getId());
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/deleteCar")
	public @ResponseBody
	Car deleteCar(@AuthenticationPrincipal(expression="user") User curUser,@RequestBody Car car){
		carService.deleteCar(car.getId());
		return new Car();
	}
	@RequestMapping(method=RequestMethod.POST,value="/deleteAllCar")
	public String deleteAllCar(@AuthenticationPrincipal(expression="user") User curUser){
		carService.deleteAllCar(curUser.getId());
		return "car";
	}
	@RequestMapping(method=RequestMethod.POST,value="/addCar")
	public @ResponseBody
	Car addCar(@AuthenticationPrincipal(expression="user") User curUser,@RequestBody Pro pro){
		Car car = carService.findOneCar(curUser.getId(),pro.getId());
		System.out.println(car);
		if(car==null){
			carService.createCar(curUser.getId(),pro.getId());
		}else{
			carService.addCarCount(curUser.getId(),pro.getId());
		}
		return null;
	}
	@RequestMapping(method=RequestMethod.GET,value="/addCar/{id}")
	public String addCar1(@AuthenticationPrincipal(expression="user") User curUser,@PathVariable Long id){
		Car car = carService.findOneCar(curUser.getId(),id);
		System.out.println(car);
		if(car==null){
			carService.createCar(curUser.getId(),id);
		}else{
			carService.addCarCount(curUser.getId(),id);
		}
		return "redirect:/car";
	}
}
