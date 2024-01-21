package com.example.pharmacy.api.controller;

import com.example.pharmacy.api.dto.DeliveryCreate;
import com.example.pharmacy.api.dto.DeliveryDto;
import com.example.pharmacy.business.DeliveryService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin
@RequestMapping("/delivery")
public class DeliveryController {
    private DeliveryService deliveryService;

    @PostMapping(value = "/add")
    public ResponseEntity<DeliveryDto> addDelivery(@RequestBody DeliveryCreate deliveryCreate) {
        DeliveryDto deliveryDto = deliveryService.addDelivery(deliveryCreate);
        return ResponseEntity.ok().body(deliveryDto);
    }
    @GetMapping()
    public List<DeliveryDto> getAllDelivery() {
        return deliveryService.getAllDelivery();
    }
}
