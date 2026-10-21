package com.example.styleaura;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/orders")
@CrossOrigin(origins = {
    "http://localhost:5173",
    "http://localhost:3000"
})
public class OrderController {

    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;

    public OrderController(
            OrderRepository orderRepository,
            ProductRepository productRepository) {
        this.orderRepository = orderRepository;
        this.productRepository = productRepository;
    }

    @GetMapping
    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Order createOrder(@RequestBody Order order) {

        if (order.getItems() == null || order.getItems().isEmpty()) {
            throw new RuntimeException("Order must contain at least one item");
        }

        for (OrderItem item : order.getItems()) {

            Integer productId = item.getProduct().getId();

            Product product = productRepository.findById(productId)
                    .orElseThrow(() ->
                            new RuntimeException("Product not found: " + productId));
            System.out.println("Product ID: " + product.getId()
            + ", Stock: " + product.getStock()
            + ", Order Quantity: " + item.getQuantity());

            if (product.getStock() < item.getQuantity()) {
            	throw new ResponseStatusException(
            		    HttpStatus.CONFLICT,
            		    product.getName() + " is out of stock"
            		);
            }

            product.setStock(product.getStock() - item.getQuantity());
            System.out.println("Product ID: " + product.getId()
            + ", Old stock updated to: " + product.getStock());
            productRepository.save(product);

            item.setProduct(product);
            item.setOrder(order);
            item.setPrice(product.getPrice());
        }
        return orderRepository.save(order);
    }
    }