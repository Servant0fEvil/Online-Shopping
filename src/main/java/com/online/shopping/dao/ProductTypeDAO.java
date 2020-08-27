package com.online.shopping.dao;

import com.online.shopping.model.ProductType;

import java.util.List;

public interface ProductTypeDAO {
    public ProductType getProductType(int id);
    public List<ProductType> getAllProductType();
    public int addProductType(ProductType ProductType);
    public int updateProductType(ProductType ProductType);
    public int deleteProductType(int id);
    public List<ProductType> getTypebyCat(int id);
}
