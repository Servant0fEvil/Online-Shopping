package com.online.shopping.model;

public class ProductCategory {
    private int id;
    private String nameCat;
    private int state;

    public ProductCategory() {

    }
    public ProductCategory(String nameCat, int state) {
        this.nameCat = nameCat;
        this.state = state;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameCat() {
        return nameCat;
    }

    public void setNameCat(String nameCat) {
        this.nameCat = nameCat;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
