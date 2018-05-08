package com.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.UserDao;
import com.shop.entiy.User;
import com.shop.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public void regist(User user) {
		System.out.println(user.getUsername());
		User user1 = userDao.findOneUsername(user.getUsername());
		if(user1==null)
			userDao.regist(user);
		else
			throw new RuntimeException("用户名已经存在");
	}

}
