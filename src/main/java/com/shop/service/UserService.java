package com.shop.service;

import com.shop.entiy.User;

public interface UserService {

	void regist(User user);

	void updateEmail(User curUser);

	void updatePassword(User curUser, String userpassword);

}
