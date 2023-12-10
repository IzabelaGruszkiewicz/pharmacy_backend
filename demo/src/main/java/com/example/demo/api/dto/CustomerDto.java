package com.example.demo.api.dto;

import com.example.demo.infrastructure.database.entity.CustomerEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CustomerDto {
    String name;
    String surname;
    String email;
    String phoneNumber;
    String city;

    public CustomerDto(CustomerEntity customer) {
        this.name = customer.getName();
        this.surname = customer.getSurname();
        this.email = customer.getEmail();
        this.phoneNumber = customer.getPhoneNumber();
        this.city = customer.getAddress().getCity();
    }
}
