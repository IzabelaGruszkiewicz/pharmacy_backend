package com.example.demo.api.controller;

import com.example.demo.api.dto.CustomerDto;
import com.example.demo.business.CustomerService;
import com.example.demo.infrastructure.database.entity.CustomerEntity;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("/customers")
public class CustomerController {
    private CustomerService customerService;
    @GetMapping(value = "/all")
    public List<CustomerDto> getAllCustomer(){
        return customerService.getAllCustomers();
    }
}
