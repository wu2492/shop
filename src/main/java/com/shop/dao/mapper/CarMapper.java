package com.shop.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.entiy.Car;

public interface CarMapper {

	List<Car> findAll(Long id);

	Car findOneCar(@Param("userId")Long userId, @Param("proId")Long proId);

	void addCarCount(@Param("userId")Long userId, @Param("proId")Long proId);

	void createCar(@Param("userId")Long userId, @Param("proId")Long proId);

	void deleteAllCar(Long userId);

	void minusCount(Long carId);

	void deleteIdCar(Long carId);

	void addIdCarCount(Long carId);

	Car findIdOneCar(Long carId);

}
