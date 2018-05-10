package com.shop.dao.mapper;

import com.shop.entiy.PersonalCenter;

public interface PersonalCenterMapper {

	PersonalCenter findOneConterDetails(Long id);

	void createPersonalCenter(PersonalCenter personalCenter);

	void updatePersonalCenter(PersonalCenter personalCenter);

}
