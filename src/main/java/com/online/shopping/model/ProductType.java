package com.online.shopping.model;

public class ProductType {
    private int id;
    private String nameType;
    private int IDCategory;
    private int state;

    public ProductType() {

    }

    public ProductType(String nameType, int IDCategory, int state) {
        this.nameType = nameType;
        this.IDCategory = IDCategory;
        this.state = state;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameType() {
        return nameType;
    }

    public void setNameType(String nameType) {
        this.nameType = nameType;
    }

    public int getIDCategory() {
        return IDCategory;
    }

    public void setIDCategory(int IDCategory) {
        this.IDCategory = IDCategory;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
