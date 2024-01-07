package com.example.pharmacy.api.dto;

import com.example.pharmacy.infrastructure.database.entity.ProductEntity;
import lombok.*;

@Data
@With
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetailsDto {
    private Integer id;
    private String brand;
    private String name;
    private Double price;
    private String photoPath;
    private String category;
    private String subcategory;
    private String description;

    public ProductDetailsDto(ProductEntity e) {
        this.id = e.getProductId();
        this.brand = e.getBrand();
        this.name =e.getName();
        this.price = e.getPrice();
        this.description = e.getDescription();
        this.photoPath = e.getPhotoPath();
        this.category = e.getCategory().getName();
        this.subcategory = e.getSubcategory().getName();
    }
}
