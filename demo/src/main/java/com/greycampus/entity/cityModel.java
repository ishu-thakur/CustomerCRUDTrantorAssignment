package com.greycampus.entity;

import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Table(name = "CITY")
public class cityModel {

	private int city_id;
	private int country_id;
	private String city_name;
}
