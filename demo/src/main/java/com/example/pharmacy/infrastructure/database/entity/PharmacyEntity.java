package com.example.pharmacy.infrastructure.database.entity;

import com.example.pharmacy.api.dto.PharmacyCreate;
import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "pharmacy")
public class PharmacyEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pharmacy_id")
    private Integer pharmacyId;

    @Column(name = "name")
    private String name;

    @Column(name = "location")
    private String location;

    @Column(name = "opening_hour")
    private String openingHour;

    @Column(name = "closing_hour")
    private String closingHour;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "x")
    private String x;

    @Column(name = "y")
    private String y;

    public PharmacyEntity(PharmacyCreate pharmacyCreate) {
        this.name = pharmacyCreate.getName();
        this.location=pharmacyCreate.getLocation();
        this.openingHour=pharmacyCreate.getOpeningHour();
        this.closingHour=pharmacyCreate.getClosingHour();
        this.phoneNumber=pharmacyCreate.getPhoneNumber();
        this.x=pharmacyCreate.getX();
        this.y=pharmacyCreate.getY();
    }
}
