package com.shop.dao;

import com.shop.entiy.User;

public interface UserDao {

	void regist(User user);

	User findOneUsername(String username);

	void updateEmail(User curUser);

	void updatePassword(User curUser, String userpassword);

}
