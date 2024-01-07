package com.example.pharmacy.business;

import com.example.pharmacy.api.dto.FavouritesCreate;
import com.example.pharmacy.api.dto.FavouritesDto;
import com.example.pharmacy.api.dto.ProductDetailsDto;
import com.example.pharmacy.infrastructure.database.entity.FavouritesEntity;
import com.example.pharmacy.infrastructure.database.entity.ProductEntity;
import com.example.pharmacy.infrastructure.database.repository.jpa.FavouritesJpaRepository;
import com.example.pharmacy.infrastructure.database.repository.jpa.ProductJpaRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class FavouritesService {
    private ProductJpaRepository productJpaRepository;
    private FavouritesJpaRepository favouritesJpaRepository;
    public FavouritesEntity addToFavourites(FavouritesCreate favouritesCreate) {
        FavouritesEntity favourites = new FavouritesEntity(favouritesCreate);
        FavouritesEntity saved = favouritesJpaRepository.save(favourites);
        return saved;
    }

    public List<FavouritesDto> getFavourites() {
        List<FavouritesEntity> all = favouritesJpaRepository.findAll();
        List<FavouritesDto> result = new ArrayList<>();

        for (FavouritesEntity favourites : all) {
            Integer productId = favourites.getProductId();
            ProductEntity product = productJpaRepository.findById(productId)
                    .orElseThrow(() -> new RuntimeException("Nie znaleziono"));
            ProductDetailsDto productDetailsDto = new ProductDetailsDto(product);
            FavouritesDto favouritesDto = new FavouritesDto(favourites, productDetailsDto);
            result.add(favouritesDto);
        }
        return result;
    }

    public String deleteFavourite(Integer favouriteId) {
        FavouritesEntity foundFavourite = favouritesJpaRepository.findById(favouriteId).orElseThrow(
                () -> new RuntimeException("Nie znaleziono")
        );
        favouritesJpaRepository.delete(foundFavourite);
        return "Produkt " + foundFavourite.getProductId() + " zostal usuniety";
    }
}
