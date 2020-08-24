package com.online.shopping.rowmapper;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductTypeRowMapper implements RowMapper<ProductTypeRowMapper> {

    @Override
    public ProductTypeRowMapper mapRow(ResultSet rs, int i) throws SQLException {
        ProductTypeRowMapper productType = new ProductTypeRowMapper();


        return productType;
    }
}
