package com.online.shopping.rowmapper;

import com.online.shopping.model.Product;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductRowMapper implements RowMapper<Product> {


    @Override
    public Product mapRow(ResultSet rs, int i) throws SQLException {
        Product product = new Product();
        product.setId(rs.getInt("ID_sanpham"));


        return product;
    }
}
