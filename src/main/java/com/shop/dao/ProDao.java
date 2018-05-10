package com.shop.dao;

import java.util.List;

import com.shop.entiy.Pro;

public interface ProDao {

	void createPro(Pro pro, String sortId);

	List<Pro> findAll();

	Pro findIdOnePro(Long id);

}
