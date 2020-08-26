package com.online.shopping.rowmapper;

import com.online.shopping.model.Producer;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProducerRowMapper implements RowMapper<Producer> {
    @Override
    public Producer mapRow(ResultSet rs, int i) throws SQLException {
        Producer producer = new Producer();
        producer.setId(rs.getInt("ID_NCC"));
        producer.setName(rs.getString("TenNCC"));
        producer.setAddress(rs.getString("DiaChiNCC"));
        producer.setPhone(rs.getString("DienThoaiNCC"));
        producer.setState(rs.getInt("TrangThai"));
        return producer;
    }
}
