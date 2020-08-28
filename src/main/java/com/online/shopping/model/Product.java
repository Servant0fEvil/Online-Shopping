package com.online.shopping.model;

import java.util.Date;

public class Product {
    private int id;
    private int typeId;
    private String name;
    private double cost;
    private int IDProducer;
    private Date importDate;
    private int quantity;
    private String image;
    private String detail;
    private int state;

    public Product() {

    }

    public Product(int typeId, String name, double cost, int IDProducer, Date importDate, int quantity, String image, String detail, int state) {
        this.typeId = typeId;
        this.name = name;
        this.cost = cost;
        this.IDProducer = IDProducer;
        this.importDate = importDate;
        this.quantity = quantity;
        this.image = image;
        this.detail = detail;
        this.state = state;
    }

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

    public Date getImportDate() {
        return importDate;
    }

    public void setImportDate(Date importDate) {
        this.importDate = importDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String  image) {
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

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getIDProducer() {
        return IDProducer;
    }

    public void setIDProducer(int  IDProducer) {
        this.IDProducer = IDProducer;
    }
}