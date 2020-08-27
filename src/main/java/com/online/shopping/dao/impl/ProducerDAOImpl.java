package com.online.shopping.dao.impl;

import com.online.shopping.dao.ProducerDAO;
import com.online.shopping.model.Producer;
import com.online.shopping.rowmapper.ProducerRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class ProducerDAOImpl implements ProducerDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Transactional
    public Producer getProducer(int id) {
        String sql = "select * from nhacungcap where ID_NCC = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new ProducerRowMapper());

    }

    @Transactional
    public List<Producer> getAllProducer() {
        String sql = "select * from nhacungcap";

        List<Producer> producers = jdbcTemplate.query(sql,new ProducerRowMapper());

        return producers;
    }

    @Transactional
    public int addProducer(Producer Producer) {
        SimpleJdbcInsert insert = new SimpleJdbcInsert(jdbcTemplate);
        insert.withTableName("nhacungcap").usingGeneratedKeyColumns("ID_NCC");
        Map<String, Object> parameters = new HashMap<>(9);
        parameters.put("TenNCC",Producer.getName());
        parameters.put("DiaChiNCC",Producer.getAddress());
        parameters.put("DienThoaiNCC",Producer.getPhone());
        parameters.put("TrangThai",Producer.getState());

        Number insertId = insert.executeAndReturnKey(parameters);

        return insertId.intValue();
    }

    @Transactional
    public int updateProducer(Producer Producer) {
        String sql = "update nhacungcap set TenNCC = ?,DiaChiNCC = ?,DienThoaiNCC = ?,TrangThai = ? where ID_NCC = ?";

        return jdbcTemplate.update(sql, new Object[]{Producer.getName(),Producer.getAddress(),Producer.getPhone(),Producer.getPhone(),Producer.getState(),Producer.getId()});
    }

    @Transactional
    public int deleteProducer(int id) {
        return jdbcTemplate.update("delete from nhacungcap where ID_NCC = ?", id);
    }
}
