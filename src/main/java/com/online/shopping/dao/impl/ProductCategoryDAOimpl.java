package com.online.shopping.dao.impl;

import com.online.shopping.dao.ProductCategoryDAO;
import com.online.shopping.model.ProductCategory;
import com.online.shopping.rowmapper.AdminRowMapper;
import com.online.shopping.rowmapper.ProductCategoryRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Component
public class ProductCategoryDAOimpl implements ProductCategoryDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Transactional
    public ProductCategory getProductCategory(int id) {
        String sql = "select * from nganhhang where ID_nganhhang = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new ProductCategoryRowMapper());
    }

    @Transactional
    public List<ProductCategory> getAllProductCategory() {
        String sql = "select * from nganhhang";

        return jdbcTemplate.query(sql,new ProductCategoryRowMapper());
    }

    @Transactional
    public int addProductCategory(ProductCategory ProductCategory) {
        SimpleJdbcInsert insert = new SimpleJdbcInsert(jdbcTemplate);
        insert.withTableName("nganhhang").usingGeneratedKeyColumns("ID_nganhhang");
        Map<String, Object> parameters = new HashMap<>(2);
        parameters.put("TenNganhHang",ProductCategory.getNameCat());
        parameters.put("TrangThai",ProductCategory.getState());

        Number insertId = insert.executeAndReturnKey(parameters);

        return insertId.intValue();
    }

    @Transactional
    public int updateProductCategory(ProductCategory ProductCategory) {
        String sql = "update nganhhang set TenNganhHang = ?,TrangThai = ?  where ID_nganhhang = ?";

        return jdbcTemplate.update(sql, new Object[]{ProductCategory.getNameCat(),ProductCategory.getState(),ProductCategory.getId()});
    }

    @Transactional
    public int deleteProductCategory(int id) {
        return jdbcTemplate.update("delete from nganhhang where ID_nganhhang = ?", id);
    }
}
