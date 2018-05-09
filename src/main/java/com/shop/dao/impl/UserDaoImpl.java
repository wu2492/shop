package com.shop.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.shop.dao.UserDao;
import com.shop.dao.mapper.UserMapper;
import com.shop.entiy.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public void regist(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userMapper.regist(user);
	}

	@Override
	public User findOneUsername(String username) {
		return userMapper.findOneUsername(username);
	}

}
