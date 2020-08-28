package com.online.shopping.dao.impl;

import com.online.shopping.dao.ProductTypeDAO;
import com.online.shopping.model.ProductType;
import com.online.shopping.rowmapper.ProductTypeRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Component
public class ProductTypeDAOImpl implements ProductTypeDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;


    @Transactional
    public ProductType getProductType(int id) {
        String sql = "select * from loaihang where ID_loaihang = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new ProductTypeRowMapper());
    }

    @Transactional
    public List<ProductType> getAllProductType() {
        String sql = "select * from loaihang";

        return jdbcTemplate.query(sql,new ProductTypeRowMapper());
    }

    @Transactional
    public int addProductType(ProductType ProductType) {
        SimpleJdbcInsert insert = new SimpleJdbcInsert(jdbcTemplate);
        insert.withTableName("loaihang").usingGeneratedKeyColumns("ID_loaihang");
        Map<String, Object> parameters = new HashMap<>(3);
        parameters.put("TenLoaiHang",ProductType.getNameType());
        parameters.put("ID_nganhhang",ProductType.getCatID());
        parameters.put("TrangThai",ProductType.getState());

        Number insertId = insert.executeAndReturnKey(parameters);

        return insertId.intValue();
    }

    @Transactional
    public int updateProductType(ProductType ProductType) {
        return 0;
    }

    @Transactional
    public int deleteProductType(int id) {
        return 0;
    }

    @Override
    public List<ProductType> getTypebyCat(int id) {
        String sql = "select * from loaihang where ID_nganhhang = ?";

        List<ProductType> productTypes = jdbcTemplate.query(sql, new Object[]{id},new ProductTypeRowMapper());

        return productTypes;
    }
}
