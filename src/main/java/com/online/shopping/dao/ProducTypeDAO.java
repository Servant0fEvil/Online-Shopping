package com.online.shopping.dao;

import com.online.shopping.model.ProductType;

import java.util.List;

public interface ProducTypeDAO {
    public ProductType getProduct(int id);
    public List<ProductType> getAllProduct();
    public int addProduct(ProductType ProductType);
    public int updateProduct(ProductType ProductType);
    public int deleteProduct(int id);
}
