package com.online.shopping.rowmapper;

import com.online.shopping.model.Member;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberRowMapper implements RowMapper<Member> {
    @Override
    public Member mapRow(ResultSet rs, int i) throws SQLException {
        Member member = new Member();
        member.setId(rs.getInt("ID_thanhvien"));
        member.setUserName(rs.getString("TaiKhoan"));
        member.setPassWord(rs.getString("MatKhau"));
        member.setName(rs.getString("HoVaTen"));
        member.setAddress(rs.getString("DiaChi"));
        member.setSex(rs.getInt("GioiTinh"));
        member.setAvatar(rs.getString("Avatar"));
        member.setPhone(rs.getString("DienThoai"));
        member.setEmail(rs.getString("Email"));

        try {
            member.setBirthday((new SimpleDateFormat("dd/MM/yyyy").parse(rs.getString("NgaySinh"))));
        } catch (ParseException e) {
            try {
                member.setBirthday(new SimpleDateFormat("dd/MM/yyyy").parse("06/09/2000"));
            } catch (ParseException parseException) {
                parseException.printStackTrace();
            }
            e.printStackTrace();
        }

        member.setRegDate(new Date(rs.getLong("NgayDangKy")));
        member.setLastLogin(new Date(rs.getLong("HoatDongCuoi")));
        member.setStatus(rs.getInt("TrangThai"));
        return member;
    }
}
