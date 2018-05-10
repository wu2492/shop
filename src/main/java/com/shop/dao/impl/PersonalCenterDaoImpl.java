package com.shop.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.PersonalCenterDao;
import com.shop.dao.mapper.PersonalCenterMapper;
import com.shop.entiy.PersonalCenter;

@Repository
public class PersonalCenterDaoImpl implements PersonalCenterDao {
	
	@Autowired
	private PersonalCenterMapper personalCenterMapper;
	
	@Override
	public PersonalCenter findOneConterDetails(Long id) {
		return personalCenterMapper.findOneConterDetails(id);
	}

	@Override
	public void createPersonalCenter(PersonalCenter personalCenter) {
		personalCenterMapper.createPersonalCenter(personalCenter);
	}

	@Override
	public void updatePersonalCenter(PersonalCenter personalCenter) {
		personalCenterMapper.updatePersonalCenter(personalCenter);
	}

}
