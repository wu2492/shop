package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.OrderDao;
import com.shop.entiy.Order;
import com.shop.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;
	
	@Override
	public List<Order> findAll(Long id) {
		return orderDao.findAll(id);
	}


}
