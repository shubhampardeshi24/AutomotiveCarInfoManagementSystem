package com.tech.carproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tech.carproject.dao.CarAdminDao;
import com.tech.carproject.dto.Admin;
import com.tech.carproject.dto.Car;
import com.tech.carproject.dto.CarException;

@Service
public class CarAdminServiceImpl implements CarAdminService {

	@Autowired
	private CarAdminDao dao;

	@Override
	public Admin login(String email , String password) {
		System.out.println("I am in login service ");
		Admin admin = dao.login(email, password);
		return admin;
	}

	@Override
	public boolean addCar(Car car) {
		return dao.addCar(car);
	}

	@Override
	public boolean removeCar(int id) {
		if (id <= 0)
			throw new CarException("not proper id");
		else
			return dao.remove(id);
	}

	@Override
	public Car show(int id) {
		if (id <= 0)
			throw new CarException("not proper id");
		else
			return dao.showDetails(id);
	}

	@Override
	public List<Car> showAll() {
		return dao.showAll();
	}

	@Override
	public boolean update(Car car) {
		
			return dao.update(car);
	}

	@Override
	public List<Car> visit( String search) {
		return dao.visit( search);
	}

	@Override
	public boolean registerUser(Admin admin) {
		System.out.println("I am in register user service");
		return dao.registerUser(admin);
	}

}
