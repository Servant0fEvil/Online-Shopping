package com.online.shopping.dao.impl;

import com.online.shopping.dao.CartDAO;
import com.online.shopping.model.ShoppingCart;
import com.online.shopping.rowmapper.CartRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class CartDAOImpl implements CartDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Transactional
    public ShoppingCart getShoppingCart(int id) {
        String sql = "select * from giohang where ID_giohang = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new CartRowMapper());
    }

    @Transactional
    public List<ShoppingCart> getAllShoppingCart() {
        String sql = "select * from giohang";

        List<ShoppingCart> shoppingCarts = jdbcTemplate.query(sql, new CartRowMapper());

        return shoppingCarts;
    }

    @Transactional
    public int addShoppingCart(ShoppingCart ShoppingCart) {
        SimpleJdbcInsert insert = new SimpleJdbcInsert(jdbcTemplate);
        insert.withTableName("giohang").usingGeneratedKeyColumns("ID_giohang");
        Map<String, Object> parameters = new HashMap<>(4);
        parameters.put("ID_thanhvien",ShoppingCart.getIdMember());
        parameters.put("ID_sanpham",ShoppingCart.getIdProduct());
        parameters.put("SoLuong",ShoppingCart.getQuantity());
        parameters.put("NgayDatMua",ShoppingCart.getOrderDate().getTime());

        Number insertId = insert.executeAndReturnKey(parameters);

        return insertId.intValue();
    }

    @Transactional
    public int updateShoppingCart(ShoppingCart ShoppingCart) {
        String sql = "update giohang set ID_thanhvien = ?,ID_sanpham = ?,SoLuong = ?,NgayDatMua= ? where ID_giohang = ?";

        return jdbcTemplate.update(sql, new Object[]{ShoppingCart.getIdMember(),ShoppingCart.getIdProduct(),ShoppingCart.getQuantity(),ShoppingCart.getOrderDate(),ShoppingCart.getId()});
    }

    @Transactional
    public int deleteShoppingCart(int id) {
        return jdbcTemplate.update("delete from giohang where ID_giohang = ?", id);
    }
}
