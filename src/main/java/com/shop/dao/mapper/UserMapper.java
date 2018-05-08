package com.shop.dao.mapper;

import com.shop.entiy.User;

public interface UserMapper {

	void regist(User user);

	User findOneUsername(String uaername);

}
