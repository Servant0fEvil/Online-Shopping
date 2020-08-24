package com.online.shopping.model;

public class Product {
    private int id;
    private String IDType;
    private String name;
    private double cost;
    private String IDProducer;
    private int importDate;
    private int quantity;
    private int image;
    private String detail;
    private int state;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getImportDate() {
        return importDate;
    }

    public void setImportDate(int importDate) {
        this.importDate = importDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getImage() {
        return image;
    }

    public void setImage(int image) {
        this.image = image;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getIDType() {
        return IDType;
    }

    public void setIDType(String IDType) {
        this.IDType = IDType;
    }

    public String getIDProducer() {
        return IDProducer;
    }

    public void setIDProducer(String  IDProducer) {
        this.IDProducer = IDProducer;
    }
}