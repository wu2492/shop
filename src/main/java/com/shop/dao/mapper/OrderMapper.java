package com.shop.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.entiy.Order;

public interface OrderMapper {

	List<Order> findAll(Long id);

	Order findOneOrder(Long id);

	void createOrder(Order order);

	void createOrderItem(@Param("proId") Long proId,@Param("orderId") Long orderId,@Param("count") Integer count);

	void orderPay(Long id);

}
