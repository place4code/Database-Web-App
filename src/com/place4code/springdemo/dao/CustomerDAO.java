package com.place4code.springdemo.dao;

import java.util.List;

import com.place4code.springdemo.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();
}