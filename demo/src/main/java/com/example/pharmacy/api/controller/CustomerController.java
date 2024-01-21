package com.example.pharmacy.api.controller;

import com.example.pharmacy.api.dto.OrderDto;
import com.example.pharmacy.business.OrderService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin
@RequestMapping("/customer")
public class CustomerController {
    private OrderService orderService;
    @GetMapping("/orders/{customerHash}")
    public List<OrderDto> getAllOrdersByCustomerHash(
            @PathVariable String customerHash
    ) {
        return orderService.getAllOrdersByCustomerHash(customerHash);
    }
}

