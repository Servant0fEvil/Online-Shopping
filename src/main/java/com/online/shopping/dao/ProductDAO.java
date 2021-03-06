package com.online.shopping.dao;

import com.online.shopping.model.Product;

import java.util.List;

public interface ProductDAO {
    public Product getProduct(int id);
    public List<Product> getAllProduct();
    public int addProduct(Product product);
    public int updateProduct(Product product);
    public int deleteProduct(int id);
    public List<Product> getProductbyCat(int id);
    public List<Product> getProductbyType(int id);
}
