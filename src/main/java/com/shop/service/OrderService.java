package com.shop.service;

import java.util.List;

import com.shop.entiy.Order;

public interface OrderService {

	List<Order> findAll(Long id);

}
