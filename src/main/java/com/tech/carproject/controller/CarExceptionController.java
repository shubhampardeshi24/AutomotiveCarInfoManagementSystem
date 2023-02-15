package com.tech.carproject.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.tech.carproject.dto.CarException;

@ControllerAdvice
public class CarExceptionController {

	@ExceptionHandler(CarException.class)
	public String name(HttpServletRequest request,CarException exception) {
		System.out.println("I am in exception handler");
		request.setAttribute("error", exception.getMessage());
		return "login";
	}
	 

}
