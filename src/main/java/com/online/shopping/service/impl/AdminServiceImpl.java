package com.online.shopping.service.impl;

import com.online.shopping.dao.AdminDAO;
import com.online.shopping.model.Admin;
import com.online.shopping.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

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
    public int addAdmin(Admin Admin) {
        return adminDAO.addAdmin(Admin);
    }

    @Override
    public int updateAdmin(Admin Admin) {
        return adminDAO.updateAdmin(Admin);
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
