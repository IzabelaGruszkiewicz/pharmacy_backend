package com.example.pharmacy.api.controller;

import com.example.pharmacy.api.dto.PharmacyCreate;
import com.example.pharmacy.api.dto.PharmacyDto;
import com.example.pharmacy.business.PharmacyService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin
@RequestMapping("/pharmacy")
public class PharmacyController {
    private PharmacyService pharmacyService;

    @PostMapping(value = "/add")
    public ResponseEntity<PharmacyDto> addPharmacy(@RequestBody PharmacyCreate pharmacyCreate) {
        PharmacyDto pharmacyDto = pharmacyService.addPharmacy(pharmacyCreate);
        return ResponseEntity.ok().body(pharmacyDto);
    }

    @GetMapping()
    public List<PharmacyDto> getAllPharmacy() {
        return pharmacyService.getAllPharmacy();
    }
}
