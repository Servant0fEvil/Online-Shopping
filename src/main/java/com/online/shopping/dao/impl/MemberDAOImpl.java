package com.online.shopping.dao.impl;

import com.online.shopping.dao.MemberDAO;
import com.online.shopping.model.Member;
import com.online.shopping.rowmapper.MemberRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class MemberDAOImpl implements MemberDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Transactional
    public Member getMember(int id) {
        String sql = "select * from thanhvien where ID_thanhvien = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new MemberRowMapper());
    }

    @Transactional
    public List<Member> getAllMember() {
        String sql = "select * from thanhvien";

        List<Member> members = jdbcTemplate.query(sql, new MemberRowMapper());

        return members;
    }

    @Transactional
    public int addMember(Member member) {
        SimpleJdbcInsert insert = new SimpleJdbcInsert(jdbcTemplate);
        insert.withTableName("thanhvien").usingGeneratedKeyColumns("ID_thanhvien");
        Map<String, Object> parameters = new HashMap<>(12);
        parameters.put("TaiKhoan", member.getUserName());
        parameters.put("MatKhau", member.getPassWord());
        parameters.put("HoVaTen", member.getName());
        parameters.put("DiaChi", member.getAddress());
        parameters.put("GioiTinh", member.getSex());
        parameters.put("Avatar", member.getAvatar());
        parameters.put("DienThoai", member.getPhone());
        parameters.put("Email", member.getEmail());
        parameters.put("NgaySinh", member.getBirthday());
        parameters.put("NgayDangKy", member.getRegDate().getTime());
        parameters.put("HoatDongCuoi", member.getLastLogin().getTime());
        parameters.put("TrangThai", member.getStatus());

        Number insertId = insert.executeAndReturnKey(parameters);

        return insertId.intValue();
    }

    @Transactional
    public int updateMember(Member member) {
        String sql = "update thanhvien set TaiKhoan = ?,MatKhau = ?,HoVaTen = ?,DiaChi = ?," +
                "GioiTinh = ?,Avatar = ?,DienThoai = ?,Email = ?,NgaySinh = ? where ID_thanhvien = ?";

        return jdbcTemplate.update(sql, new Object[]{member.getUserName(), member.getPassWord(), member.getAddress(), member.getSex(),
                member.getAvatar(), member.getPhone(), member.getEmail(), member, member.getBirthday(), member.getId()});
    }

    @Transactional
    public int deleteMember(int id) {
        return jdbcTemplate.update("delete from thanhvien where ID_thanhvien = ?", id);
    }

    @Override
    public Member validate(Member member) {
        String sql = "select * from thanhvien where TaiKhoan='" + member.getUserName() + "' and MatKhau='" + member.getPassWord()
                + "'";


        List<Member> users = jdbcTemplate.query(sql, new MemberRowMapper());
        return users.size() > 0 ? users.get(0) : null;
    }
}
