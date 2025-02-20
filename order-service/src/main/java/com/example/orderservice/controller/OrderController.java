package com.example.orderservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.example.orderservice.model.Order;
import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/orders")
public class OrderController {

    @GetMapping
    public List<Order> getOrders() {
        return Arrays.asList(
                new Order(1L, "Laptop", 1200.00),
                new Order(2L, "Phone", 700.00),
                new Order(3L, "Tablet", 300.00)
        );
    }

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello from Order Service!";
    }
}

