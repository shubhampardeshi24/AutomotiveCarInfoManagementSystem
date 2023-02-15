package com.tech.carproject.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.tech.carproject.dto.Admin;
import com.tech.carproject.dto.Car;
import com.tech.carproject.dto.CarException;

@Repository
public class CarAdminDaoImpl implements CarAdminDao {

	@PersistenceUnit
	private EntityManagerFactory factory;

	@Override
	public Admin login(String email, String password) {
		System.out.println(" I am in login dao ");
		EntityManager manager = factory.createEntityManager();
		Admin admin = manager.find(Admin.class, email);
		if (admin != null) {
			System.out.println(" user found");
			if (email.equals(admin.getEmail())) {
				System.out.println("checking email");
				if (password.equals(admin.getPassword())) {
					System.out.println(" Verifing password");
					return admin;
				} else {
					throw new CarException("Invalid password");
				}
			}
		}
		throw new CarException("Account does not Exist, Please contact administration!!");
	}

	@Override
	public boolean addCar(Car car) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		if (car != null) {
			transaction.begin();
			manager.persist(car);
			transaction.commit();
			return true;
		}
		return false;
	}

	@Override
	public boolean remove(int id) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		Car car = manager.find(Car.class, id);
		if (car != null) {
			transaction.begin();
			manager.remove(car);
			transaction.commit();
			return true;
		}
		return false;
	}

	@Override
	public Car showDetails(int id) {
		EntityManager manager = factory.createEntityManager();
		Car car = manager.find(Car.class, id);
		if (car != null) {
			return car;
		}
		return null;
	}

	@Override
	public List<Car> showAll() {
		EntityManager manager = factory.createEntityManager();
		String query = "From Car ";
		Query query2 = manager.createQuery(query);
		List<Car> cars = query2.getResultList();
		return cars;
	}

	@Override
	public boolean update(Car car) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		Car car2 = manager.find(Car.class, car.getCar_Id());
		if (car2 != null) {
			transaction.begin();
			if (car.getCar_Name() != "") {
				car2.setCar_Name(car.getCar_Name());
			}
			if (car.getCar_PowerSteering() != null)
				car2.setCar_PowerSteering(car.getCar_PowerSteering());
			if (car.getCar_Company() != "")
				car2.setCar_Company(car.getCar_Company());
			if (car.getCar_BreakSystem() != "") {
				car2.setCar_BreakSystem(car.getCar_BreakSystem());
			}
			if (car.getCar_EngineCapacity() > 0) {
				car2.setCar_EngineCapacity(car.getCar_EngineCapacity());
			}
			if (car.getCar_FuelType() != "") {
				car2.setCar_FuelType(car.getCar_FuelType());
			}
			if (car.getCar_GearType() != "")
				car2.setCar_GearType(car.getCar_GearType());
			if (car.getCar_Image() != "") {
				car2.setCar_Image(car.getCar_Image());
			}
			if (car.getCar_Mileage() > 0)
				car2.setCar_Mileage(car.getCar_Mileage());
			if (car.getCar_OnroadPrice() > 0) {
				car2.setCar_OnroadPrice(car.getCar_OnroadPrice());
			}
			if (car.getCar_SeatingCapacity() > 0)
				car2.setCar_SeatingCapacity(car.getCar_SeatingCapacity());
			if (car.getCar_ShowPrice() > 0)
				car2.setCar_ShowPrice(car.getCar_ShowPrice());
			transaction.commit();
			return true;
		}
		return false;
	}

	@Override
	public List<Car> visit(String search) {
		EntityManager manager = factory.createEntityManager();
//		if (option.equalsIgnoreCase("car_Name")) {
		String query = "From Car where car_Name like :cname or  car_Company like :cname or car_FuelType like :cname";
		Query query2 = manager.createQuery(query);
		query2.setParameter("cname", search);
		List<Car> car = query2.getResultList();
		return car;
//		} else if (option.equalsIgnoreCase("car_Company")) {
//			String query = "From Car where car_Company like :ccom";
//			Query query2 = manager.createQuery(query);
//			query2.setParameter("ccom", search);
//			List<Car> car = query2.getResultList();
//			return car;
//		}else if(option.equalsIgnoreCase("car_FuelType")) {
//			String query = "From Car where car_FuelType like :cftype";
//			Query query2 = manager.createQuery(query);
//			query2.setParameter("cftype", search);
//			List<Car> car=query2.getResultList();
//			return car;
//		}
//		return null;
	}

	@Override
	public boolean registerUser(Admin admin) {
		boolean userIsExist = false;
		System.out.println("I am in register user DAO");
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		Admin newAdmin = manager.find(Admin.class, admin.getEmail());
		if (newAdmin == null) {
			System.out.println("I am in if statement commiting user");
			transaction.begin();
			manager.persist(admin);
			transaction.commit();
			userIsExist = true;
		}
		return userIsExist;
	}

}
