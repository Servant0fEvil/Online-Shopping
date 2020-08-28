package com.online.shopping.rowmapper;

import com.online.shopping.model.ShoppingCart;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class CartRowMapper implements RowMapper<ShoppingCart> {

    @Override
    public ShoppingCart mapRow(ResultSet rs, int i) throws SQLException {
        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setId(rs.getInt("ID_giohang"));
        shoppingCart.setIdMember(rs.getInt("ID_thanhvien"));
        shoppingCart.setIdProduct(rs.getInt("ID_sanpham"));
        shoppingCart.setQuantity(rs.getInt("SoLuong"));
        shoppingCart.setOrderDate(new Date(rs.getLong("HoatDongCuoi")));
        return shoppingCart;
    }
}
