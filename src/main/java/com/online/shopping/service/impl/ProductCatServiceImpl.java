package com.online.shopping.service.impl;

import com.online.shopping.dao.ProductCategoryDAO;
import com.online.shopping.model.ProductCategory;
import com.online.shopping.service.ProductCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductCatServiceImpl implements ProductCatService {
    @Autowired
    ProductCategoryDAO productCategoryDAO;

    @Override
    public ProductCategory getProductCategory(int id) {
        return productCategoryDAO.getProductCategory(id);
    }

    @Override
    public List<ProductCategory> getAllProductCategory() {
        return productCategoryDAO.getAllProductCategory();
    }

    @Override
    public int addProductCategory(ProductCategory ProductCategory) {
        return productCategoryDAO.addProductCategory(ProductCategory);
    }

    @Override
    public int updateProductCategory(ProductCategory ProductCategory) {
        return productCategoryDAO.updateProductCategory(ProductCategory);
    }

    @Override
    public int deleteProductCategory(int id) {
        return productCategoryDAO.deleteProductCategory(id);
    }
}
