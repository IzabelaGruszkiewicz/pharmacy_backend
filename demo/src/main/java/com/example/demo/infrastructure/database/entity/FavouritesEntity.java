package com.example.demo.infrastructure.database.entity;

import com.example.demo.api.dto.FavouritesCreate;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "favourites")
public class FavouritesEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "product_id")
    private Integer productId;

    public FavouritesEntity(FavouritesCreate favouritesCreate) {
        this.productId = favouritesCreate.getProductId();
    }
}
