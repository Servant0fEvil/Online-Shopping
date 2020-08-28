package com.online.shopping.service.impl;

import com.online.shopping.dao.AdminDAO;
import com.online.shopping.model.Admin;
import com.online.shopping.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDAO adminDAO;

    @Override
    public Admin getAdmin(int id) {
        return adminDAO.getAdmin(id);
    }

    @Override
    public List<Admin> getAllAdmin() {
        return adminDAO.getAllAdmin();
    }

    @Override
    public int addAdmin(Admin admin) {
        return adminDAO.addAdmin(admin);
    }

    @Override
    public int updateAdmin(int id, String name, String address, String phone, String email, String avt) {
        return adminDAO.updateAdmin(id,name,address,phone,email,avt);
    }

    @Override
    public int deleteAdmin(int id) {
        return adminDAO.deleteAdmin(id);
    }

    @Override
    public Admin validate(Admin Admin) {
        return adminDAO.validate(Admin);
    }
}