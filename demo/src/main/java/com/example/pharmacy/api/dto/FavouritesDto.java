package com.example.pharmacy.api.dto;

import com.example.pharmacy.infrastructure.database.entity.FavouritesEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FavouritesDto {
    private Integer id;
    private Integer productId;
    private ProductDetailsDto product;

    public FavouritesDto(FavouritesEntity f, ProductDetailsDto product) {
        this.id=f.getId();
        this.productId=f.getProductId();
        this.product = product;
    }
}