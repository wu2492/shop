package com.shop.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.entiy.Pro;

public interface ProMapper {

	void createPro(@Param("sortId") String sortId,Pro pro);

	List<Pro> findAll();

}
