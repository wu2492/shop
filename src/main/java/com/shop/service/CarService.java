package com.shop.service;

import java.util.List;

import com.shop.entiy.Car;

public interface CarService {

	List<Car> findAll(Long id);

	void minusCount(Long carId);

	Car findOneCar(Long carId);

	void deleteCar(Long carId);

	void addCarCount( Long carId);

	void deleteAllCar(Long userId);

	void createCar(Long userId, Long proId);

	Car findOneCar(Long userId, Long proId);

	void addCarCount(Long userId, Long proId);

}
