package com.emusicstore.dao;

import com.emusicstore.model.Customer;

import java.util.List;

/**
 * Created by shams on 4/23/2017.
 */
public interface CustomerDao {
    public void addCustomer(Customer customer);

    public  Customer getCustomerById(int customerId);
    List<Customer> getAllCustomers();
    Customer getCustomerByUsername(String username);
}
