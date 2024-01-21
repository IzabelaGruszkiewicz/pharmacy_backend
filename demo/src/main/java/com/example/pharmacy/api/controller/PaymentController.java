package com.example.pharmacy.api.controller;

import com.example.pharmacy.api.dto.PaymentDto;
import com.example.pharmacy.business.PaymentService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin
@RequestMapping("/payment")
public class PaymentController {
    private final PaymentService paymentService;
    @GetMapping()
    public List<PaymentDto> getAllPayment() {
        return paymentService.getAllPayment();
    }
}
