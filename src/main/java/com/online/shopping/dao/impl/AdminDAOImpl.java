package com.online.shopping.dao.impl;

import com.online.shopping.dao.AdminDAO;
import com.online.shopping.model.Admin;
import com.online.shopping.model.Admin;
import com.online.shopping.rowmapper.AdminRowMapper;
import com.online.shopping.rowmapper.AdminRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Component
public class AdminDAOImpl implements AdminDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Transactional
    public Admin getAdmin(int id) {
        String sql = "select * from admin where ID_admin = ?";

        Admin admin = jdbcTemplate.queryForObject(sql, new Object[]{id}, new AdminRowMapper());

        return admin;
    }

    @Transactional
    public List<Admin> getAllAdmin() {
        String sql = "select * from admin";

        List<Admin> admins = jdbcTemplate.query(sql, new AdminRowMapper());

        return admins;
    }

    @Transactional
    public int addAdmin(Admin admin) {
        SimpleJdbcInsert insert = new SimpleJdbcInsert(jdbcTemplate);
        insert.withTableName("admin").usingGeneratedKeyColumns("ID_admin");
        Map<String, Object> parameters = new HashMap<>(12);
        parameters.put("TaiKhoan", admin.getUserName());
        parameters.put("MatKhau", admin.getPassWord());
        parameters.put("Loai",admin.getType());
        parameters.put("HoVaTen", admin.getName());
        parameters.put("DiaChi", admin.getAddress());
        parameters.put("GioiTinh", admin.getSex());
        parameters.put("Avatar", admin.getAvatar());
        parameters.put("DienThoai", admin.getPhone());
        parameters.put("Email", admin.getEmail());
        parameters.put("NgaySinh", admin.getBirthday());
        parameters.put("NgayDangKy", admin.getFirstReg().getTime());
        parameters.put("HoatDongCuoi", admin.getLastLogin().getTime());


        Number insertId = insert.executeAndReturnKey(parameters);

        return insertId.intValue();
    }

    @Transactional
    public int updateAdmin(Admin Admin) {
        String sql = "update admin set TaiKhoan = ?,MatKhau = ?,HoVaTen = ?,DiaChi = ?," +
                "GioiTinh = ?,Avatar = ?,DienThoai = ?,Email = ?,NgaySinh = ? where ID_admin = ?";

        return jdbcTemplate.update(sql, new Object[]{Admin.getUserName(), Admin.getPassWord(), Admin.getAddress(), Admin.getSex(),
                Admin.getAvatar(), Admin.getPhone(), Admin.getEmail(), Admin.getBirthday(), Admin.getId()});
    }

    @Transactional
    public int deleteAdmin(int id) {
        return jdbcTemplate.update("delete from admin where ID_admin = ?", id);
    }

    @Transactional
    public Admin validate(Admin Admin) {
        String sql = "select * from admin where TaiKhoan='" + Admin.getUserName() + "' and MatKhau='" + Admin.getPassWord()+ "'";
        List<Admin> users = jdbcTemplate.query(sql, new AdminRowMapper());
        return users.size() > 0 ? users.get(0) : null;
    }
}
