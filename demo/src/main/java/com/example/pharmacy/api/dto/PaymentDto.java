package com.example.pharmacy.api.dto;

import com.example.pharmacy.infrastructure.database.entity.PaymentEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentDto {
    private String name;

    public PaymentDto(PaymentEntity d) {
        this.name=d.getName();
    }
}
