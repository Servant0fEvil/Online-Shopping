package com.online.shopping.service;

import com.online.shopping.model.ProductCategory;

import java.util.List;

public interface ProductCatService {
    public ProductCategory getProductCategory(int id);
    public List<ProductCategory> getAllProductCategory();
    public int addProductCategory(ProductCategory ProductCategory);
    public int updateProductCategory(ProductCategory ProductCategory);
    public int deleteProductCategory(int id);
}
