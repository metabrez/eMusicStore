package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by shams on 4/2/2017.
 */
public interface CartDao {

    Cart getCartById(int cartId);
    void update(Cart cart);
}
