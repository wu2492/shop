package com.shop.service;

import java.util.List;

import com.shop.entiy.Order;
import com.shop.entiy.User;

public interface OrderService {

	List<Order> findAll(Long id);

	Order orderDetails(Long id);

	void orderPay(Long id);

	Order findOneOrder(Long orderId);

	Order createOrder(User curUser, List<Long> carIds, Long addresId);

}
