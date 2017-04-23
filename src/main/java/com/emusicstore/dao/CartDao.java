package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by shams on 4/2/2017.
 */
public interface CartDao {

    Cart create(Cart cart);

    Cart read(String cartId);

    void update(String cartId,Cart cart);

    void delete(String cartId);
}
