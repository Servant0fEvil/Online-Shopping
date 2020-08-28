package com.online.shopping.service.impl;

import com.online.shopping.dao.BillDAO;
import com.online.shopping.model.Bill;
import com.online.shopping.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BillServiceImpl implements BillService {
    @Autowired
    BillDAO dao;

    @Override
    public Bill getBill(int id) {
        return dao.getBill(id);
    }

    @Override
    public List<Bill> getAllBills() {
        return dao.getAllBills();
    }

    @Override
    public int deleteBill(int id) {
        return dao.deleteBill(id);
    }
}
