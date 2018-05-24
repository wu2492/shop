package com.shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.CarDao;
import com.shop.dao.mapper.CarMapper;
import com.shop.entiy.Car;

@Repository
public class CarDaoImpl implements CarDao {
	
	@Autowired
	private CarMapper carMapper;
	
	@Override
	public List<Car> findAll(Long id) {
		return carMapper.findAll(id);
	}

	@Override
	public void minusCount(Long carId) {
		carMapper.minusCount(carId);		
	}

	@Override
	public Car findOneCar(Long userId, Long proId) {
		return carMapper.findOneCar(userId,proId);		
	}

	@Override
	public void deleteCar(Long carId) {
		carMapper.deleteIdCar(carId);				
	}

	@Override
	public void addCarCount(Long userId, Long proId) {
		carMapper.addCarCount(userId,proId);		
	}

	@Override
	public void deleteAllCar(Long userId) {
		carMapper.deleteAllCar(userId);	
	}

	@Override
	public void createCar(Long userId, Long proId) {
		System.err.println("userId:"+userId+",proId:"+proId);
		carMapper.createCar(userId,proId);	
	}

	@Override
	public Car findOneCar(Long carId) {
		return carMapper.findIdOneCar(carId);
	}

	@Override
	public void addCarCount(Long carId) {
		carMapper.addIdCarCount(carId);	
	}

	@Override
	public List<Car> findIdsCar(String carIds) {
		return carMapper.findIdsCar(carIds);
	}

}
