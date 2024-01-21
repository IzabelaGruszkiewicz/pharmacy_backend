package com.example.pharmacy.api.controller;

import com.example.pharmacy.api.dto.OrderCreate;
import com.example.pharmacy.api.dto.OrderDto;
import com.example.pharmacy.business.OrderService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin
@RequestMapping("/order")
public class OrderController {
    private OrderService orderService;

    @PostMapping(value = "/add")
    public ResponseEntity<OrderDto> addOrder(@RequestBody OrderCreate orderCreate) {
        OrderDto orderDto = orderService.addOrder(orderCreate);
        return ResponseEntity.ok().body(orderDto);
    }

    @GetMapping()
    public List<OrderDto> getAllOrder() {
        return orderService.getAllOrder();
    }
}
