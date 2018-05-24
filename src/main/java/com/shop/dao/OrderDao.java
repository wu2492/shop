package com.shop.dao;

import java.util.List;

import com.shop.entiy.Order;

public interface OrderDao {

	List<Order> findAll(Long id);

	Order findOneOrder(Long id);

	void createOrder(Order order);

	void createOrderItem(Long proId, Long orderId, Integer count);

	void orderPay(Long id);


}
