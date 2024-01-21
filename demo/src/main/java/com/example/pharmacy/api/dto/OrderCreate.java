package com.example.pharmacy.api.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderCreate {
    private String fullName;
    private String city;
    private String address;
    private String postalCode;
    private String selectedDelivery;
    private String selectedPayment;
    private double totalCost;
    private String customerHash;
    private String phoneNumber;
    private String email;
}
