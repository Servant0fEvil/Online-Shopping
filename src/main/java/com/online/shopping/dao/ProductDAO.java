package com.online.shopping.dao;

import com.online.shopping.model.Product;

import java.util.List;

public interface ProductDAO {
    public Product getProduct(int id);
    public List<Product> getAllProduct();
    public int addProduct(Product Product);
    public int updateProduct(Product Product);
    public int deleteProduct(int id);
}
