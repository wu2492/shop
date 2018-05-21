package com.shop.dao.mapper;

import java.util.List;

import com.shop.entiy.Addres;

public interface AddresMapper {

	List<Addres> findAll(Long id);

	Addres findIdOneAddres(Long id);

	void addAddres(Addres addres);

	void updateAddres(Addres addres);

}
