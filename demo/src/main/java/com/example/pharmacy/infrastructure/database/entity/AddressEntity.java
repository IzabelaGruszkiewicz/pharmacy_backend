package com.example.pharmacy.infrastructure.database.entity;

import com.example.pharmacy.api.dto.OrderCreate;
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

    @Column(name = "address")
    private String address;

    @Column(name = "postal_code")
    private String postalCode;

    @Column(name = "phone_number")
    private String phoneNumber;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private CustomerEntity customer;

    public AddressEntity(OrderCreate orderCreate, CustomerEntity foundCustomer) {
        this.city = orderCreate.getCity();
        this.address = orderCreate.getAddress();
        this.postalCode = orderCreate.getPostalCode();
        this.phoneNumber = orderCreate.getPhoneNumber();
        this.customer = foundCustomer;
    }
}
