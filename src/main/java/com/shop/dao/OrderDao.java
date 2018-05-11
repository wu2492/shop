package com.shop.dao;

import java.util.List;

import com.shop.entiy.Order;

public interface OrderDao {

	List<Order> findAll(Long id);

}
