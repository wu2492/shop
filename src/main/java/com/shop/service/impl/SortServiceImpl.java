package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.SortDao;
import com.shop.entiy.Sort;
import com.shop.service.SortService;

@Service
public class SortServiceImpl implements SortService {
	@Autowired
	private SortDao sortDao;
	
	@Override
	public List<Sort> findAll() {
		return sortDao.findAll();
	}

}
