package com.example.pharmacy.infrastructure.database.entity;

import com.example.pharmacy.api.dto.ProductCreate;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;


@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "product")
public class ProductEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private Integer productId;

    @Column(name = "brand")
    private String brand;

    @Column(name = "name")
    private String name;

    @Column(name = "photo_path")
    private String photoPath;

    @Column(name = "price")
    private Double price;

    @Column(name = "magazine_stock")
    private Integer magazineStock;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "product")
    private List<OpinionEntity> opinions;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private CategoryEntity category;

    @ManyToOne
    @JoinColumn(name = "subcategory_id")
    private SubcategoryEntity subcategory;

    public ProductEntity(ProductCreate productCreate, CategoryEntity categoryEntity, SubcategoryEntity subcategoryEntity) {
        this.brand = productCreate.getBrand();
        this.name = productCreate.getName();
        this.price = productCreate.getPrice();
        this.magazineStock = productCreate.getAmountToAdd();
        this.photoPath = productCreate.getPhotoPath();
        this.description = productCreate.getDescription();
        this.category = categoryEntity;
        this.subcategory = subcategoryEntity;
    }
}
