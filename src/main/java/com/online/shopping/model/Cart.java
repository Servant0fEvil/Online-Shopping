package com.online.shopping.model;

public class Cart {
    private int id;
    private String name;
    private double price;
    private int quantity;
    private String image;
    private double total;

    public Cart() {
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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

    public void setImage(String image) {
        this.image = image;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return this.getId() == ((Cart) obj).getId();
    }
    public void toCart(Product product) {
        this.id = product.getId();
        this.name = product.getName();
        this.price = product.getCost();
        this.image = product.getImage();
        this.quantity = 1;
    }
}
