package com.example.demo.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "payment")
public class PaymentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_id")
    private Integer paymentId;

    @Column(name = "name")
    private String name;

    @Column(name = "type")
    private String type;
}
