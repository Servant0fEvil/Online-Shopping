package com.online.shopping.rowmapper;

import com.online.shopping.model.Product;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class ProductRowMapper implements RowMapper<Product> {


    @Override
    public Product mapRow(ResultSet rs, int i) throws SQLException {
        Product product = new Product();
        product.setId(rs.getInt("ID_sanpham"));
        product.setTypeId(rs.getInt("ID_loaihang"));
        product.setName(rs.getString("TenSanPham"));
        product.setCost(rs.getDouble("GiaTien"));
        product.setIDProducer(rs.getInt("ID_nhacungcap"));
        product.setImportDate(new Date(rs.getLong("NgayNhap")));
        product.setQuantity(rs.getInt("SoLuong"));
        product.setImage(rs.getString("Anh"));
        product.setDetail(rs.getString("MoTaSanPham"));
        product.setState(rs.getInt("TrangThai"));
        return product;
    }
}
