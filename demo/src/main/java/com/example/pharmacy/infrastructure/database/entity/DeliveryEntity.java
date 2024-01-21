package com.example.pharmacy.infrastructure.database.entity;

import com.example.pharmacy.api.dto.DeliveryCreate;
import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "delivery")
public class DeliveryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "delivery_id")
    private Integer deliveryId;

    @Column(name = "name")
    private String name;

    @Column(name = "type")
    private String type;

    @Column(name = "price")
    private double price;

    public DeliveryEntity(DeliveryCreate deliveryCreate) {
        this.name=deliveryCreate.getName();
        this.type=deliveryCreate.getType();
        this.price=deliveryCreate.getPrice();
    }
}
