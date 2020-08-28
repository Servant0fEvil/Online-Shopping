package com.online.shopping.dao;

import com.online.shopping.model.Admin;

import java.util.List;

public interface AdminDAO {
    Admin getAdmin(int id);
    public List<Admin> getAllAdmin();
    public int addAdmin(Admin Admin);
    public int updateAdmin(int id, String name, String address, String phone, String email, String avt);
    public int deleteAdmin(int id);
    public Admin validate(Admin Admin);
}
