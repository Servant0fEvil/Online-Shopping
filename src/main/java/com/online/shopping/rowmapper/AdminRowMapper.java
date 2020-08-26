package com.online.shopping.rowmapper;

import com.online.shopping.model.Admin;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AdminRowMapper implements RowMapper<Admin> {
    @Override
    public Admin mapRow(ResultSet rs, int i) throws SQLException {
        Admin Admin = new Admin();
        Admin.setId(rs.getInt("ID_admin"));
        Admin.setUserName(rs.getString("TaiKhoan"));
        Admin.setPassWord(rs.getString("MatKhau"));
        Admin.setType(rs.getInt("Loai"));
        Admin.setName(rs.getString("HoVaTen"));
        Admin.setAddress(rs.getString("DiaChi"));
        Admin.setSex(rs.getInt("GioiTinh"));
        Admin.setAvatar(rs.getString("Avatar"));
        Admin.setPhone(rs.getString("DienThoai"));
        Admin.setEmail(rs.getString("Email"));

        try {
            Admin.setBirthday((new SimpleDateFormat("dd/MM/yyyy").parse(rs.getString("NgaySinh"))));
        } catch (ParseException e) {
            try {
                Admin.setBirthday(new SimpleDateFormat("dd/MM/yyyy").parse("06/09/2000"));
            } catch (ParseException parseException) {
                parseException.printStackTrace();
            }
            e.printStackTrace();
        }

        Admin.setFirstReg(new Date(rs.getLong("NgayDangKy")));
        Admin.setLastLogin(new Date(rs.getLong("HoatDongCuoi")));
        return Admin;
    }
}
