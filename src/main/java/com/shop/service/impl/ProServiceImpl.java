package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.ProDao;
import com.shop.entiy.Pro;
import com.shop.service.ProService;

@Service
public class ProServiceImpl implements ProService {
	
	@Autowired
	private ProDao proDao;
	
	@Override
	public void createPro(Pro pro, String sortId) {
		proDao.createPro(pro,sortId);
	}

	@Override
	public List<Pro> findAll() {
		return proDao.findAll();
	}

}
