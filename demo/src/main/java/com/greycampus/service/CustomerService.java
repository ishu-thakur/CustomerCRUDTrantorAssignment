package com.greycampus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greycampus.dao.CustomerDAO;
import com.greycampus.entity.Customer;

@Service
public class CustomerService {

	@Autowired
	private CustomerDAO dao;

	public int insert(Customer customer) {
		return dao.insert(customer);
	}

	public void delete(int cid) {
		dao.delete(cid);
	}

	public int update(Customer customer) {
		return dao.update(customer);
	}

	public List<Customer> search(int cid) {
		 return dao.search(cid);
	}
}
