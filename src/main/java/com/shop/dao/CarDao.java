package com.shop.dao;

import java.util.List;

import com.shop.entiy.Car;

public interface CarDao {

	List<Car> findAll(Long id);

	void minusCount(Long carId);

	Car findOneCar(Long carId);

	void deleteCar(Long carId);

	void addCarCount(Long carId);

	void deleteAllCar(Long userId);

	void createCar(Long userId, Long proId);
	
	Car findOneCar(Long userId, Long carId);
	
	void addCarCount(Long userId, Long proId);


}
