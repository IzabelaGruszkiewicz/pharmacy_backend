package com.example.demo.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "address")
public class AddressEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "address_id")
    private Integer addressId;

    @Column(name = "city")
    private String city;

    @Column(name = "street")
    private String street;

    @Column(name = "house_number")
    private String houseNumber;

    @Column(name = "flat_number")
    private String flatNumber;

    @Column(name = "post_code")
    private String postCode;

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "address")
    private CustomerEntity customer;
}
