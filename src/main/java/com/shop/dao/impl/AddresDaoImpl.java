package com.shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.AddresDao;
import com.shop.dao.mapper.AddresMapper;
import com.shop.entiy.Addres;import oracle.net.aso.i;

@Repository
public class AddresDaoImpl implements AddresDao {
	
	@Autowired
	private AddresMapper addresMapper;

	@Override
	public List<Addres> findAll(Long id) {
		return addresMapper.findAll(id);
	}

	@Override
	public Addres findIdOneAddres(Long id) {
		return addresMapper.findIdOneAddres(id);
	}

	@Override
	public void addAddres(Addres addres) {
		addresMapper.addAddres(addres);
	}

	@Override
	public void updateAddres(Addres addres) {
		addresMapper.updateAddres(addres);
	}

}
