package com.online.shopping.service.impl;

import com.online.shopping.dao.ProductTypeDAO;
import com.online.shopping.model.ProductType;
import com.online.shopping.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductTypeServiceImpl implements ProductTypeService {

    @Autowired
    ProductTypeDAO productTypeDAO;

    @Override
    public ProductType getProductType(int id) {
        return productTypeDAO.getProductType(id);
    }

    @Override
    public List<ProductType> getAllProductType() {
        return productTypeDAO.getAllProductType();
    }

    @Override
    public int addProductType(ProductType ProductType) {
        return productTypeDAO.addProductType(ProductType);
    }

    @Override
    public int updateProductType(ProductType ProductType) {
        return productTypeDAO.updateProductType(ProductType);
    }

    @Override
    public int deleteProductType(int id) {
        return productTypeDAO.deleteProductType(id);
    }

    @Override
    public List<ProductType> getTypebyCat(int id) {
        return productTypeDAO.getTypebyCat(id);
    }
}
