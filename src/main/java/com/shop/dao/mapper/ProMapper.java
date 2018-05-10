package com.shop.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.entiy.Pro;

public interface ProMapper {

	void createPro(Pro pro);

	List<Pro> findAll();

}
