package com.online.shopping.service;

import com.online.shopping.model.ShoppingCart;

import java.util.List;

public interface CartService {
    public ShoppingCart getShoppingCart(int id);
    public List<ShoppingCart> getAllShoppingCart();
    public int addShoppingCart(ShoppingCart ShoppingCart);
    public int updateShoppingCart(ShoppingCart ShoppingCart);
    public int deleteShoppingCart(int id);
}
