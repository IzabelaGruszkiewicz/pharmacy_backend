package com.example.demo.api.dto;

import lombok.*;

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
