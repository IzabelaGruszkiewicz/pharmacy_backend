package com.example.pharmacy.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductCreate {
    private String brand;
    private String name;
    private Double price;
    private Integer amountToAdd;
    private String photoPath;
    private String description;
    private Integer categoryId;
    private Integer subcategoryId;
}
