package com.example.demo.api.dto;

import com.example.demo.infrastructure.database.entity.ProductEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductPageDto {
    private Integer id;
    private String category;
    private String subcategory;
    private String brand;
    private String name;
    private String description;
    private Double price;
    private Integer magazineStock;
    private String photoPath;
    private long totalElements;

    public ProductPageDto(ProductEntity product, long totalElements) {
        this.id = product.getProductId();
        this.category = product.getCategory().getName();
        this.subcategory = product.getSubcategory().getName();
        this.brand = product.getBrand();
        this.name = product.getName();
        this.description = product.getDescription();
        this.price = product.getPrice();
        this.magazineStock = product.getMagazineStock();
        this.photoPath = product.getPhotoPath();
        this.totalElements = totalElements;
    }
}
