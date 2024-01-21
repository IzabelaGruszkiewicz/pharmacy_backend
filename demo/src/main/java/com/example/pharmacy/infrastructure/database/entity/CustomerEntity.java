package com.example.pharmacy.infrastructure.database.entity;

import com.example.pharmacy.api.dto.OrderCreate;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "customer")
public class CustomerEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customer_id")
    private Integer customerId;

    @Column(name = "customer_hash")
    private String customerHash;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "email")
    private String email;

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
    private List<AddressEntity> addresses;


    public CustomerEntity(OrderCreate orderCreate) {
        this.customerHash = orderCreate.getCustomerHash();
        this.fullName = orderCreate.getFullName();
        this.email = orderCreate.getEmail();
    }
}
