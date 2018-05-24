package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.CarDao;
import com.shop.entiy.Car;
import com.shop.service.CarService;

@Service
public class CarServiceImpl implements CarService {
	@Autowired
	private CarDao carDao;
	
	@Override
	public List<Car> findAll(Long id) {
		return carDao.findAll(id);
	}

	@Override
	public void minusCount(Long carId) {
		carDao.minusCount(carId);
	}

	@Override
	public Car findOneCar(Long userId, Long proId) {
		return carDao.findOneCar(userId,proId);
	}

	@Override
	public void deleteCar( Long carId) {
		carDao.deleteCar(carId);
	}

	@Override
	public void addCarCount(Long userId, Long proId) {
		carDao.addCarCount(userId,proId);		
	}

	@Override
	public void deleteAllCar(Long userId) {
		carDao.deleteAllCar(userId);		
	}

	@Override
	public void createCar(Long userId, Long proId) {
		carDao.createCar(userId,proId);	
	}

	@Override
	public Car findOneCar(Long carId) {
		return carDao.findOneCar(carId);
	}

	@Override
	public void addCarCount(Long carId) {
		carDao.addCarCount(carId);			
	}

	@Override
	public List<Car> findIdsCar(String carIds) {
		return carDao.findIdsCar(carIds);
	}

}
