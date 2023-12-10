package com.example.demo.api.dto;

import com.example.demo.infrastructure.database.entity.ProductEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto {
    private String name;
    private Double price;
    private Integer magazineStock;

    public ProductDto(ProductEntity product) {
        this.name = product.getName();
        this.price = product.getPrice();
        this.magazineStock = product.getMagazineStock();
    }
}
