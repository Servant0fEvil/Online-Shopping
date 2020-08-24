package com.online.shopping.rowmapper;

import com.online.shopping.model.ProductType;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;


public class ProductTypeRowMapper implements RowMapper<ProductType> {

    @Override
    public ProductType mapRow(ResultSet rs, int i) throws SQLException {
            ProductType productType = new ProductType();
            productType.setId(rs.getInt("ID_loaihang"));
            productType.setNameType(rs.getString("TenLoaiHang"));
            productType.setIDCategory(rs.getInt("ID_nganhhang"));
            productType.setState(rs.getInt("TrangThai"));
            return productType;
    }
}
