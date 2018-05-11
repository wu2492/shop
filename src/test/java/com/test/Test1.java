package com.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shop.config.AppConfig;
import com.shop.dao.OrderDao;
import com.shop.entiy.Order;

public class Test1 {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
		OrderDao dao = context.getBean(OrderDao.class);
		context.close();
	}

}
