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
	private CarMapper CarMapper;
	
	@Override
	public List<Car> findAll(Long id) {
		return CarMapper.findAll(id);
	}

	@Override
	public void minusCount(Long carId) {
		CarMapper.minusCount(carId);		
	}

	@Override
	public Car findOneCar(Long userId, Long proId) {
		return CarMapper.findOneCar(userId,proId);		
	}

	@Override
	public void deleteCar(Long carId) {
		CarMapper.deleteIdCar(carId);				
	}

	@Override
	public void addCarCount(Long userId, Long proId) {
		CarMapper.addCarCount(userId,proId);		
	}

	@Override
	public void deleteAllCar(Long userId) {
		CarMapper.deleteAllCar(userId);	
	}

	@Override
	public void createCar(Long userId, Long proId) {
		System.err.println("userId:"+userId+",proId:"+proId);
		CarMapper.createCar(userId,proId);	
	}

	@Override
	public Car findOneCar(Long carId) {
		return CarMapper.findIdOneCar(carId);
	}

	@Override
	public void addCarCount(Long carId) {
		CarMapper.addIdCarCount(carId);	
	}

}
