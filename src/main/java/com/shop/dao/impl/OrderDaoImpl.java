package com.shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.OrderDao;
import com.shop.dao.mapper.OrderMapper;
import com.shop.entiy.Order;

@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public List<Order> findAll(Long id) {
		return orderMapper.findAll(id);
	}

	@Override
	public Order findOneOrder(Long id) {
		return orderMapper.findOneOrder(id);
	}

	@Override
	public void createOrder(Order order) {
		orderMapper.createOrder(order);
	}

	@Override
	public void createOrderItem(Long proId, Long orderId, Integer count) {
		orderMapper.createOrderItem(proId,orderId,count);
	}

	@Override
	public void orderPay(Long id) {
		orderMapper.orderPay(id);		
	}


}
