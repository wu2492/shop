package com.shop.service;

import java.util.List;

import com.shop.entiy.Pro;

public interface ProService {

	void createPro(Pro pro, String sortId);

	List<Pro> findAll();

}
