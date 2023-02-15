package com.tech.carproject.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table
public class Car {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int car_Id;
	@Column
	private String car_Name;
	@Column
	private String car_Company;
	@Column
	private String car_FuelType;
	@Column
	private String car_PowerSteering;
	@Column
	private String car_BreakSystem;
	@Column
	private int car_ShowPrice;
	@Column
	private int car_OnroadPrice;
	@Column
	private int car_SeatingCapacity;
	@Column
	private int car_Mileage;
	@Column
	private int car_EngineCapacity;
	@Column
	private String car_GearType;
	@Column
	private String car_Image;
}
