package com.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.PersonalCenterDao;
import com.shop.entiy.PersonalCenter;
import com.shop.service.PersonalCenterService;

@Service
public class PersonalCenterServiceImpl implements PersonalCenterService {
	
	@Autowired
	private PersonalCenterDao personalCenterDao;
	
	@Override
	public PersonalCenter findOneConterDetails(Long id) {
		return personalCenterDao.findOneConterDetails(id);
	}

	@Override
	public void createPersonalCenter(PersonalCenter personalCenter) {
		personalCenterDao.createPersonalCenter(personalCenter);
	}

	@Override
	public void updatePersonalCenter(PersonalCenter personalCenter) {
		personalCenterDao.updatePersonalCenter(personalCenter);
		
	}

}
