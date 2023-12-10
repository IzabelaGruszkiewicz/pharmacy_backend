package com.example.demo.infrastructure.database.entity;

import com.example.demo.api.dto.ProductCreate;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.util.List;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "product")
public class ProductEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private Integer productId;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private Double price;

    @Column(name = "magazine_stock")
    private Integer magazineStock;

    @OneToMany(mappedBy = "product")
    private List<OpinionEntity> opinions;


    public ProductEntity(ProductCreate productCreate) {
        this.name = productCreate.getName();
        this.price= productCreate.getPrice();
        this.magazineStock = productCreate.getAmount();
    }
}
