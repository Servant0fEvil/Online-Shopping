package com.online.shopping.model;

public class ProductType {
    private int id;
    private String nameType;
    private int catID;
    private int state;

    public ProductType() {

    }

    public ProductType(String nameType, int catID, int state) {
        this.nameType = nameType;
        this.catID = catID;
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

    public int getCatID() {
        return catID;
    }

    public void setCatID(int catID) {
        this.catID = catID;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
