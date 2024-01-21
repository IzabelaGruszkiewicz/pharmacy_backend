package com.example.pharmacy.api.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor(staticName = "of")
public class BestsellersDto {
    private List<ProductDetailsDto> bestsellers = new ArrayList<>();
    private String pathToHeroImage;
}
