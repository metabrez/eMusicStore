package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by shams on 3/27/2017.
 */
public interface ProductDao {

    void addProduct(Product product);
    Product getProductById(String id);
    List<Product> getAllProducts();
    void deleteProduct(String id);
}
