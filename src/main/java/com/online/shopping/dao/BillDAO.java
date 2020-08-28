package com.online.shopping.dao;

import com.online.shopping.model.Bill;

import java.util.List;

public interface BillDAO {
    public Bill getBill(int id);

    public List<Bill> getAllBills();

    public int deleteBill(int id);
}
