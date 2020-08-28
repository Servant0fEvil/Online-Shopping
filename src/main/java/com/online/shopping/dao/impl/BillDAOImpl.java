package com.online.shopping.dao.impl;

import com.online.shopping.dao.BillDAO;
import com.online.shopping.model.Bill;
import com.online.shopping.rowmapper.BillRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BillDAOImpl implements BillDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public Bill getBill(int id) {
        String sql = "select * from hoadonthanhvien where ID_hoadon = ?";

        Bill bill = jdbcTemplate.queryForObject(sql, new Object[]{id}, new BillRowMapper());

        return bill;    }

    @Override
    public List<Bill> getAllBills()
    {
        String sql = "select * from hoadonthanhvien";

        return jdbcTemplate.query(sql,new BillRowMapper());
    }

    @Override
    public int deleteBill(int id) {
        return jdbcTemplate.update("delete from hoadonthanhvien where ID_hoadon = ?", id);
    }
}
