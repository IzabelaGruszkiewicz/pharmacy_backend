package com.example.pharmacy.api.dto;

import com.example.pharmacy.infrastructure.database.entity.ProductEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto {
    private String brand;
    private String name;
    private Double price;
    private Integer magazineStock;
    private String photoPath;
    private String description;

    public ProductDto(ProductEntity product) {
        this.brand = product.getBrand();
        this.name = product.getName();
        this.price = product.getPrice();
        this.description=product.getDescription();
        this.magazineStock = product.getMagazineStock();
        this.photoPath = product.getPhotoPath();
    }

}
