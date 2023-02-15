package com.tech.carproject.controller;

import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class AdminException {

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public String adminExcep(MethodArgumentNotValidException exception) {
		return exception.getBindingResult().getFieldError().getDefaultMessage();
	}
}
