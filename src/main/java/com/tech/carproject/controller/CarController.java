package com.tech.carproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.tech.carproject.dto.Admin;
import com.tech.carproject.dto.Car;
import com.tech.carproject.service.CarAdminService;

@Controller
public class CarController {

	@Autowired
	private CarAdminService service;

	@PostMapping(path = "/visit")
	public String visit(String search, ModelMap map) {
		List<Car> car = service.visit(search);
		if (car != null) {
			map.addAttribute("car", car);
			return "visitor";
		} else {
			map.addAttribute("msg", "Something went wrong!!!");
			return "visitor";
		}
	}

	@GetMapping("login")
	public String getLogin() {
		return "login";
	}

	
	@GetMapping("Admin")
	public String getAdminPage(HttpSession session, ModelMap map) {
		Admin admin = (Admin) session.getAttribute("loggedIn");
		if (admin != null) {
			return "Admin";
		} else {
			map.addAttribute("error", "login first the account");
			return "login";
		}
	}

	@PostMapping("Admin")
	public String login(ModelMap map, HttpServletRequest request, String email, String password) {
		System.out.println(" I am in login controller" + email + password);
		Admin admin = service.login(email, password);
		if (admin != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loggedIn", admin);
			 session.setMaxInactiveInterval(60); 
			map.addAttribute("msg", "Welcome " + admin.getFirstName());
		}
		return "Admin";
	}

	@GetMapping("/addDetails")
	public String addForm(HttpSession session, ModelMap map) {
		
		Admin admin = (Admin) session.getAttribute("loggedIn");
		if (admin != null) {
			return "addDetails";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}

	@PostMapping("/addDetails")
	public String addCar(@SessionAttribute(name = "loggedIn", required = false) Admin session, ModelMap map, Car car) {
		if (session != null) {
			if (service.addCar(car)) {
				map.addAttribute("msg", "Data added successfully!!!");
			} else {
				map.addAttribute("msg", "Something went worng!!!!!");
			}
			return "addDetails";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}

	@GetMapping("/delete")
	public String deletePage(ModelMap map, @SessionAttribute(name = "loggedIn", required = false) Admin session) {
		if (session != null)
			return "delete";
		else {
			map.addAttribute("error", "login first the account");
			return "login";
		}
	}

	@PostMapping("/delete")
	public String deleteCar(ModelMap map, @SessionAttribute(name = "loggedIn", required = false) Admin session,
			String car_Id) {
		System.out.println("id is "+ car_Id);
	int Id = Integer.valueOf(car_Id);
		if (session != null) {
			if (service.removeCar(Id)) {
				map.addAttribute("msg", "Data deleted successfully!!!");
			} else {
				map.addAttribute("errorMsg", "Data not found :- " + Id);
			}
			return "delete";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}

	@GetMapping("details")
	public String show(ModelMap map, @SessionAttribute(name = "loggedIn", required = false) Admin session) {
		if (session != null)
			return "details";
		else {
			map.addAttribute("error", "login first the account");
			return "login";
		}
	}

	@PostMapping("details")
	public String showDetails(ModelMap map, @SessionAttribute(name = "loggedIn", required = false) Admin session,
			String car_Id) {
		int id = Integer.valueOf(car_Id);
		if (session != null) {
			Car car = service.show(id);
			if (car != null) {
				map.addAttribute("car", car);
			} else {
				map.addAttribute("msg", "Something went wrong !!!");
			}
			return "details";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}

	@GetMapping("alldetails")
	public String allDetails(ModelMap map, @SessionAttribute(name = "loggedIn", required = false) Admin session) {
		if (session != null) {
			List<Car> car = service.showAll();
			if (car != null) {
				map.addAttribute("car", car);
			} else
				map.addAttribute("msg", "something went wrong!!!!");
			return "showalldetails";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}

	@GetMapping("updateCar")
	public String updatePage(@SessionAttribute(name = "loggedIn", required = false) Admin session, ModelMap map) {
		if (session != null)
			return "updateCar";
		else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}

	@PostMapping("updateCar")
	public String update(@SessionAttribute(name = "loggedIn", required = false) Admin session, ModelMap map, Car car) {
		System.out.println(car.getCar_Id());
		
		if (session != null) {
			if (service.update(car)) {
				map.addAttribute("msg", "Data has been Updated successfully");
				
			} else {
				map.addAttribute("msg", "Something went wrong!!");
			}
			return "updateCar";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}

	@GetMapping("/logout")
	public String logout(ModelMap map, HttpSession session) {
		session.invalidate();
		map.addAttribute("error", "Logout successfully");
		return "index";
	}

	@GetMapping("/home")
	public String getIndexPage() {
		return "index";
	}

	@GetMapping("register")
	public String getRegister() {
		return "register";
	}

	@PostMapping("register")
	public String registerUser(ModelMap map, @Validated Admin admin) {
		System.out.println("I am in registerUser Controller");
		if (service.registerUser(admin)) {
			map.addAttribute("msg", "user has been created successfully");
			return "index";
		} else {
			map.addAttribute("msg", "account already exist with the entered Email ID, Please login!!");
			return "register";
		}
	}
	@GetMapping("viewVehicle")
	public String getVehiclePage(@SessionAttribute(name = "loggedIn", required = false) Admin session, ModelMap map) {
		if (session != null) {
			return "viewVehicle";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}
	
	@PostMapping("ViewDetails")
	public String getVehicleDetails(ModelMap map, @SessionAttribute(name = "loggedIn", required = false) Admin session,
			String car_Id) {
		int id = Integer.valueOf(car_Id);
		if (session != null) {
			Car car = service.show(id);
			if (car != null) {
				map.addAttribute("car", car);
			} else {
				map.addAttribute("msg", "Something went wrong !!!");
			}
			return "ViewDetails";
		} else {
			map.addAttribute("error", "Please Login to Continue...");
			return "login";
		}
	}	
}


