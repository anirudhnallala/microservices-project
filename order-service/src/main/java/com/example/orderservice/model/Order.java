package com.example.orderservice.model;

public class Order {
    private Long id;
    private String description;
    private double price;

    public Order(Long id, String description, double price) {
        this.id = id;
        this.description = description;
        this.price = price;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}

