package com.online.shopping.service;

import com.online.shopping.model.Admin;
import com.online.shopping.model.Bill;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BillService {
    public Bill getBill(int id);
    public List<Bill> getAllBills();
    public int deleteBill(int id);
}
