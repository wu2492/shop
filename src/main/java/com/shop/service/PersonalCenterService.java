package com.shop.service;

import com.shop.entiy.PersonalCenter;

public interface PersonalCenterService {

	PersonalCenter findOneConterDetails(Long id);

	void createPersonalCenter(PersonalCenter personalCenter);

	void updatePersonalCenter(PersonalCenter personalCenter);

}
