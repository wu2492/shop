package com.shop.service;

import java.util.List;

import com.shop.entiy.Order;
import com.shop.entiy.User;

public interface OrderService {

	List<Order> findAll(Long id);

	Order orderDetails(Long id);

	Order createOrder(User curUser, String proIds, String addresId);

	void orderPay(Long id);

}
