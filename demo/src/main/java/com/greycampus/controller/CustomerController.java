package com.greycampus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.greycampus.entity.Customer;
import com.greycampus.service.CustomerService;

@RestController
public class CustomerController {

	@Autowired
	private CustomerService service;

	@PostMapping(path = "/addCustomer")
	public ResponseEntity<Customer> insert(Customer customer) {
		service.insert(customer);
		return new ResponseEntity<Customer>(customer, HttpStatus.OK);
	}

	@PostMapping(path = "/delete")
	public String delete(int cid) {
		service.delete(cid);
		return "success.jsp";
	}

	@PostMapping(path = "/update")
	public ResponseEntity<Customer> update(Customer customer) {
		service.update(customer);
		return new ResponseEntity<Customer>(customer, HttpStatus.OK);
	}

	@PostMapping(path = "/search", produces = { "application/json" })
	public List<Customer> search(int cid) {
		return service.search(cid);
	}
}
