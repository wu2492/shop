package com.shop.dao.mapper;

import java.util.List;

import com.shop.entiy.Order;

public interface OrderMapper {

	List<Order> findAll(Long id);

	Order findOneOrder(Long id);

}
