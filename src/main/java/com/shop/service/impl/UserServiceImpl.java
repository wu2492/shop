package com.shop.service.impl;

import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.shop.dao.UserDao;
import com.shop.entiy.User;
import com.shop.service.UserService;

@Service
public class UserServiceImpl implements UserService,UserDetailsService {
	
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

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userDao.findOneUsername(username);
		if(user==null){
			throw new UsernameNotFoundException(username);
		}
		UserDetilsImpl userDetilsImpl = new UserDetilsImpl(user);
		return userDetilsImpl;
	}

	@Override
	public void updateEmail(User curUser) {
		userDao.updateEmail(curUser);		
	}

	@Override
	public void updatePassword(User curUser, String userpassword) {
		userDao.updatePassword(curUser,userpassword);
	}

}

class UserDetilsImpl extends org.springframework.security.core.userdetails.User{

	private static final long serialVersionUID = 1L;
	
	private User user;
	
	public UserDetilsImpl(User user) {
		super(user.getUsername(), user.getPassword(), Arrays.asList(new SimpleGrantedAuthority("ROLE_"+user.getRole().getName())));
		this.user = user;
	}
	
	public User getUser(){
		return user;
	}
	
	
}


