package com.example.pharmacy.business;

import com.example.pharmacy.api.dto.PharmacyCreate;
import com.example.pharmacy.api.dto.PharmacyDto;
import com.example.pharmacy.infrastructure.database.entity.PharmacyEntity;
import com.example.pharmacy.infrastructure.database.repository.jpa.PharmacyJpaRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class PharmacyService {
    private PharmacyJpaRepository pharmacyJpaRepository;

    public PharmacyDto addPharmacy(PharmacyCreate pharmacyCreate) {
        PharmacyEntity pharmacy = new PharmacyEntity(pharmacyCreate);
        PharmacyEntity savedPharmacy = pharmacyJpaRepository.save(pharmacy);
        return new PharmacyDto(savedPharmacy);
    }

    public List<PharmacyDto> getAllPharmacy() {
        List<PharmacyEntity> all = pharmacyJpaRepository.findAll();
        return all.stream()
                .map(p -> new PharmacyDto(p))
                .toList();
    }
}
