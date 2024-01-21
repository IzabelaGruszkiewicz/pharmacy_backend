package com.example.pharmacy.api.dto;

import com.example.pharmacy.infrastructure.database.entity.PharmacyEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PharmacyDto {
    private String name;
    private String location;
    private String openingHour;
    private String closingHour;
    private String phoneNumber;
    private String x;
    private String y;

    public PharmacyDto(PharmacyEntity savedPharmacy) {
        this.name=savedPharmacy.getName();
        this.location=savedPharmacy.getLocation();
        this.openingHour=savedPharmacy.getOpeningHour();
        this.closingHour=savedPharmacy.getClosingHour();
        this.phoneNumber=savedPharmacy.getPhoneNumber();
        this.x=savedPharmacy.getX();
        this.y=savedPharmacy.getY();
    }
}
