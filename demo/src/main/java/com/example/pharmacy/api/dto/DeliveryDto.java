package com.example.pharmacy.api.dto;

import com.example.pharmacy.infrastructure.database.entity.DeliveryEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DeliveryDto {
    private String name;

    public DeliveryDto(DeliveryEntity d) {
        this.name=d.getName();
    }
}
