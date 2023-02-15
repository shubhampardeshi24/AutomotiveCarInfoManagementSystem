package com.tech.carproject.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Entity
@Data
@Table
public class Admin implements Serializable{
	@Id
	@Column
	@NotNull(message = "Please Enter Email ID")
	private String email;
	
	@Column
	@NotNull(message = "Please enter FirstName")
	private String firstName;
	
	@Column
	@NotNull(message = "Please enter LastName")
	private String lastName;

	@Column
	@NotNull(message = "Password cannot be made blank")
	private String password;
}
