package com.online.shopping.model;

import java.util.Date;

public class Admin {
    private int id;
    private String userName;
    private String passWord;
    private int type;
    private String name;
    private String address;
    private int sex;
    private String avatar;
    private String phone;
    private String email;
    private Date birthday;
    private Date firstReg;
    private Date lastLogin;

    public Admin() {

    }

    public Admin(String userName, String passWord, int type, String name, String address, int sex, String avatar, String phone, String email, Date birthday, Date firstReg, Date lastLogin) {
        this.userName = userName;
        this.passWord = passWord;
        this.type = type;
        this.name = name;
        this.address = address;
        this.sex = sex;
        this.avatar = avatar;
        this.phone = phone;
        this.email = email;
        this.birthday = birthday;
        this.firstReg = firstReg;
        this.lastLogin = lastLogin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getFirstReg() {
        return firstReg;
    }

    public void setFirstReg(Date firstReg) {
        this.firstReg = firstReg;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

}