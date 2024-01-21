package com.example.pharmacy.api.dto;


import com.example.pharmacy.infrastructure.database.entity.OrderEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDto {
    private LocalDateTime date;
    private String status;
    private String customerHash;
    private double totalCost;

    public OrderDto(OrderEntity savedOrder) {
        this.date=savedOrder.getDateOrder();
        this.status=savedOrder.getStatus();
        this.customerHash =savedOrder.getCustomer().getCustomerHash();
        this.totalCost=savedOrder.getTotalPrice();
    }
}
