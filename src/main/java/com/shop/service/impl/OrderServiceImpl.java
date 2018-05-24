package com.shop.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.shop.dao.CarDao;
import com.shop.dao.OrderDao;
import com.shop.entiy.Addres;
import com.shop.entiy.Car;
import com.shop.entiy.Order;
import com.shop.entiy.User;
import com.shop.service.OrderService;

@Service
@EnableTransactionManagement
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private CarDao carDao;
	
	
	@Override
	public List<Order> findAll(Long id) {
		return orderDao.findAll(id);
	}

	@Override
	public Order orderDetails(Long id) {
		return orderDao.findOneOrder(id);
	}

	@Override
	public Order createOrder(User user, String carIds, String addresId) {
		long timeMillis = System.currentTimeMillis();
		Order order = new Order();
		order.setOrderNumber("ID"+timeMillis);
		order.setOrderTime(new Date(timeMillis));
		order.setPaymentMode(0);
		order.setPaymentStatus(0);
		order.setOrderStatus(0);
		order.setMerchant("商城自营");
		
		order.setAddres(new Addres(Long.parseLong(addresId)));
		order.setUser(user);
		
		orderDao.createOrder(order);
		
		for (String carId : carIds.split(",")) {
			Car car = carDao.findOneCar(Long.parseLong(carId));
			orderDao.createOrderItem(car.getPro().getId(),order.getId(),car.getCount());
			carDao.deleteCar(car.getId());
		}
		return order;
	}

	@Override
	public void orderPay(Long id) {
		orderDao.orderPay(id);
	}


}
