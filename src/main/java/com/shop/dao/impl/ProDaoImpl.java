package com.shop.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.ProDao;
import com.shop.dao.mapper.ProMapper;
import com.shop.entiy.Pro;

@Repository
public class ProDaoImpl implements ProDao {
	
	@Autowired
	private ProMapper proMapper;
	
	@Override
	public void createPro(Pro pro,String sortId) {
		proMapper.createPro(pro);
	}

}
