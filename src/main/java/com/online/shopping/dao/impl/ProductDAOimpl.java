package com.online.shopping.dao.impl;

import com.online.shopping.dao.ProductDAO;
import com.online.shopping.model.Product;
import com.online.shopping.rowmapper.ProductRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Component
public class ProductDAOimpl implements ProductDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Transactional
    public Product getProduct(int id) {
        String sql = "select * from sanpham where ID_sanpham = ?";

        Product product = jdbcTemplate.queryForObject(sql, new Object[]{id}, new ProductRowMapper());

        return product;
    }

    @Transactional
    public List<Product> getAllProduct() {
        String sql = "select * from sanpham";

        List<Product> products = jdbcTemplate.query(sql,new ProductRowMapper());

        return products;
    }

    @Transactional
    public int addProduct(Product product) {
        SimpleJdbcInsert insert = new SimpleJdbcInsert(jdbcTemplate);
        insert.withTableName("sanpham").usingGeneratedKeyColumns("ID_sanpham");
        Map<String, Object> parameters = new HashMap<>(9);
        parameters.put("ID_loaihang",product.getIDType());
        parameters.put("TenSanPham",product.getName());
        parameters.put("GiaTien",product.getCost());
        parameters.put("ID_nhacungcap",product.getIDProducer());
        parameters.put("NgayNhap",product.getImportDate().getTime());
        parameters.put("SoLuong",product.getQuantity());
        parameters.put("Anh",product.getImage());
        parameters.put("MoTaSanPham",product.getDetail());
        parameters.put("TrangThai",product.getState());

        Number insertId = insert.executeAndReturnKey(parameters);

        return insertId.intValue();
    }

    @Transactional
    public int updateProduct(Product product) {
        String sql = "update sanpham set ID_loaihang = ?,TenSanPham = ?,GiaTien = ?,ID_nhacungcap = ?," +
                "NgayNhap = ?, SoLuong= ?,Anh = ?,MoTaSanPham = ?,TrangThai = ? where ID_sanpham = ?";

        return jdbcTemplate.update(sql, new Object[]{product.getIDType(),product.getName(),product.getCost(),product.getIDProducer(),product.getImportDate(),
        product.getQuantity(),product.getImage(),product.getDetail(),product.getState(),product.getId()});
    }

    @Transactional
    public int deleteProduct(int id) {
        return jdbcTemplate.update("delete from sanpham where ID_sanpham = ?", id);
    }
}
