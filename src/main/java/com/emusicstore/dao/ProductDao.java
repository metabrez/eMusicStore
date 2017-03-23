package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by shams on 3/21/2017.
 */
public class ProductDao {

    private List<Product> productList;
    public  List<Product> getProductList(){

        Product product1=new Product();
        product1.setProductId("p123");
        product1.setProductName("Guitar");
        product1.setProductCategory("Instrument");
        product1.setProductDesription("This is a finder starat guitar");
        product1.setProductPrice(1200);
        product1.setProductCondition("new");
        product1.setProductStatus("Active");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("Fender");

        Product product2=new Product();
        product2.setProductId("p124");
        product2.setProductName("Record1");
        product2.setProductCategory("Record");
        product2.setProductDesription("This is a awesome air of 20th century");
        product2.setProductPrice(25);
        product2.setProductCondition("new");
        product2.setProductStatus("Active");
        product2.setUnitInStock(51);
        product2.setProductManufacturer("EMI");

        Product product3=new Product();
        product3.setProductId("p125");
        product3.setProductName("Speaker");
        product3.setProductCategory("Accessories");
        product3.setProductDesription("This is a folk shelf speaker");
        product3.setProductPrice(355);
        product3.setProductCondition("new");
        product3.setProductStatus("Active");
        product3.setUnitInStock(9);
        product3.setProductManufacturer("Polk");

productList=new ArrayList<Product>();
productList.add(product1);
productList.add(product2);
productList.add(product3);

return productList;


    }

    public  Product getProductById(String productId)throws IOException{

        for (Product product:getProductList()){

            if (product.getProductId().equals(productId)){

return  product;
            }
        }

        throw new IOException("No Product Found!!!");
    }
}
