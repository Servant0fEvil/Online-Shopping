package com.online.shopping.service.impl;

import com.online.shopping.dao.CartDAO;
import com.online.shopping.model.ShoppingCart;
import com.online.shopping.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    CartDAO cartDAO;

    @Override
    public ShoppingCart getShoppingCart(int id) {
        return cartDAO.getShoppingCart(id);
    }

    @Override
    public List<ShoppingCart> getAllShoppingCart() {
        return cartDAO.getAllShoppingCart();
    }

    @Override
    public int addShoppingCart(ShoppingCart ShoppingCart) {
        return cartDAO.addShoppingCart(ShoppingCart);
    }

    @Override
    public int updateShoppingCart(ShoppingCart ShoppingCart) {
        return cartDAO.updateShoppingCart(ShoppingCart);
    }

    @Override
    public int deleteShoppingCart(int id) {
        return cartDAO.deleteShoppingCart(id);
    }
}
