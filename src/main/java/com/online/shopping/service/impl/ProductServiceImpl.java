package com.online.shopping.service.impl;

import com.online.shopping.dao.ProductDAO;
import com.online.shopping.model.Product;
import com.online.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDAO productDAO;

    @Override
    public Product getProduct(int id) {
        return productDAO.getProduct(id);
    }

    @Override
    public List<Product> getAllProduct() {
        return productDAO.getAllProduct();
    }

    @Override
    public int addProduct(Product product) {
        return productDAO.addProduct(product);
    }

    @Override
    public int updateProduct(Product product) {
        return productDAO.updateProduct(product);
    }

    @Override
    public int deleteProduct(int id) {
        return productDAO.deleteProduct(id);
    }

    @Override
    public List<Product> getProductbyCat(int id) {
        return productDAO.getProductbyCat(id);
    }

    @Override
    public List<Product> getProductbyType(int id) {
        return productDAO.getProductbyType(id);
    }
}
