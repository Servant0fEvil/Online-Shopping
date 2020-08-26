package com.online.shopping.service;

import com.online.shopping.model.Product;

import java.util.List;

public interface ProductService {
    public Product getProduct(int id);
    public List<Product> getAllProduct();
    public int addProduct(Product product);
    public int updateProduct(Product product);
    public int deleteProduct(int id);
}
