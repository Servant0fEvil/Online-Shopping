package com.online.shopping.rowmapper;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductCategory implements RowMapper<ProductCategory> {

    @Override
    public ProductCategory mapRow(ResultSet resultSet, int i) throws SQLException {
        ProductCategory productCategory = new ProductCategory();

        return productCategory;
    }
}
