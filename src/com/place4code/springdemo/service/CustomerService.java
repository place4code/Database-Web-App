package com.place4code.springdemo.service;

import java.util.List;

import com.place4code.springdemo.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();
	public void saveCustomer(Customer customer);
	public Customer getCustomers(int id);
	public void deleteCustomer(int id);
	public List<Customer> searchCustomers(String theSearchName);
}
