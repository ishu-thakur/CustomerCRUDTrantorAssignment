package com.greycampus.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.springframework.data.annotation.Id;

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
@Table(name = "CUSTOMER")
@NamedQuery(name = "Customer.findAll", query = "SELECT e FROM Customer e")
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "CID")
	private int cid;
	private String name;
	private String type;
	private String phone;
	private String city;
	private String country;
	private String street;
//	@OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
//	private Address address;

//	public Address getAddress() {
//		return this.address;
//	}
//
//	public void setAddress(Address address) {
//		this.address = address;
//	}
}
