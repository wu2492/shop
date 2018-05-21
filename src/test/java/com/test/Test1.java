package com.test;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shop.config.AppConfig;
import com.shop.dao.OrderDao;
import com.shop.entiy.Order;

public class Test1 {
	public static void main(String[] args) {
//		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
//		OrderDao dao = context.getBean(OrderDao.class);
//		context.close();
		 Scanner s=new Scanner(System.in);
		 String a = "";
		 	do {
		 		System.out.println("请输入用户身份证号码");
		 		 a=s.next();
		 		 if(a.length()==18){
		 			  System.out.println("正确,再见");
		 		  }else{
		 			  System.out.println("错误,继续");
		 		  }
			} while (a.length()!=18);
	}

}
