package com.shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.SortDao;
import com.shop.dao.mapper.SortMapper;
import com.shop.entiy.Sort;

@Repository
public class SortDaoImpl implements SortDao {
	
	@Autowired
	private SortMapper sortMapper;

	@Override
	public List<Sort> findAll() {
		return sortMapper.findAll();
	}
	

}
