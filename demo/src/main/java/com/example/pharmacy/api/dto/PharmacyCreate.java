package com.example.pharmacy.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PharmacyCreate {
    private String name;
    private String location;
    private String openingHour;
    private String closingHour;
    private String phoneNumber;
    private String x;
    private String y;
}
