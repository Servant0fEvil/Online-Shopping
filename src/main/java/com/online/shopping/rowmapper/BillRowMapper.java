package com.online.shopping.rowmapper;

import com.online.shopping.model.Bill;
import com.online.shopping.model.MemberBill;
import com.online.shopping.model.PaymentMethod;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BillRowMapper implements RowMapper<Bill> {
    @Override
    public Bill mapRow(ResultSet resultSet, int i) throws SQLException {
        MemberBill bill = new MemberBill();
        bill.setId(resultSet.getInt("ID_hoadon"));
        bill.setMemberId(resultSet.getInt("ID_thanhvien"));
        bill.setTransId(resultSet.getInt("ID_giaodich"));
        bill.setMethod(PaymentMethod.BANK);
        bill.setTotalMoney(resultSet.getDouble("TongTien"));
        return bill;
    }
}
