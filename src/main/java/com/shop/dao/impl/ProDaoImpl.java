package com.shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.ProDao;
import com.shop.dao.mapper.ProMapper;
import com.shop.entiy.Pro;
import com.shop.entiy.Sort;

@Repository
public class ProDaoImpl implements ProDao {
	
	@Autowired
	private ProMapper proMapper;
	
	@Override
	public void createPro(Pro pro,String sortId) {
		Sort sort = new Sort();
		sort.setId(Long.parseLong(sortId));
		pro.setSort(sort);
		proMapper.createPro(pro);
	}

	@Override
	public List<Pro> findAll() {
		return proMapper.findAll();
	}

	@Override
	public Pro findIdOnePro(Long id) {
		return proMapper.findIdOnePro(id);
	}

}
