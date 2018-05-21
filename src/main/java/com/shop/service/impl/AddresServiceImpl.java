package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.AddresDao;
import com.shop.entiy.Addres;
import com.shop.service.AddresService;

@Service
public class AddresServiceImpl implements AddresService {
	
	@Autowired
	private AddresDao addresDao;

	@Override
	public List<Addres> findAll(Long id) {
		return addresDao.findAll(id);
	}

	@Override
	public Addres findIdOneAddres(Long id) {
		return addresDao.findIdOneAddres(id);
	}

	@Override
	public void addAddres(Addres addres) {
		addresDao.addAddres(addres);
	}

	@Override
	public void updateAddres(Addres addres) {
		addresDao.updateAddres(addres);
	}

}
