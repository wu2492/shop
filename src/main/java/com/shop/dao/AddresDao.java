package com.shop.dao;

import java.util.List;

import com.shop.entiy.Addres;

public interface AddresDao {

	List<Addres> findAll(Long id);

	Addres findIdOneAddres(Long id);

	void addAddres(Addres addres);

	void updateAddres(Addres addres);

}
