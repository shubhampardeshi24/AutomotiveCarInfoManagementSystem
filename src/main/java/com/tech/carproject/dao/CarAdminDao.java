package com.tech.carproject.dao;

import java.util.List;

import com.tech.carproject.dto.Admin;
import com.tech.carproject.dto.Car;

public interface CarAdminDao {

	public Admin login(String email, String password);

	public boolean addCar(Car car);

	public boolean remove(int id);

	public Car showDetails(int id);

	public List<Car> showAll();

	public boolean update(Car car);

	public List<Car> visit( String search);
	
	public boolean registerUser(Admin admin);

}
