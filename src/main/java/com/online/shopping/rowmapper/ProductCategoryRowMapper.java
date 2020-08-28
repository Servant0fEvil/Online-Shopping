package com.online.shopping.rowmapper;

import com.online.shopping.model.ProductCategory;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductCategoryRowMapper implements RowMapper<ProductCategory> {

    @Override
    public ProductCategory mapRow(ResultSet rs, int i) throws SQLException {
        ProductCategory productCategory = new ProductCategory();
        productCategory.setId(rs.getInt("ID_nganhhang"));
        productCategory.setNameCat(rs.getString("TenNganhHang"));
        productCategory.setState(rs.getInt("TrangThai"));
        return productCategory;
    }
}
