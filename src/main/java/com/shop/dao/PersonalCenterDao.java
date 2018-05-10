package com.shop.dao;

import com.shop.entiy.PersonalCenter;

public interface PersonalCenterDao {

	PersonalCenter findOneConterDetails(Long id);

	void createPersonalCenter(PersonalCenter personalCenter);

	void updatePersonalCenter(PersonalCenter personalCenter);

}
