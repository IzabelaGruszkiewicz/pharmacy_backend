package com.example.pharmacy.api.controller;

import com.example.pharmacy.api.dto.FavouritesCreate;
import com.example.pharmacy.api.dto.FavouritesDto;
import com.example.pharmacy.business.FavouritesService;
import com.example.pharmacy.infrastructure.database.entity.FavouritesEntity;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin
@RequestMapping("/favourites")
public class FavouritesController {
    private FavouritesService favouritesService;
    @PostMapping()
    public FavouritesEntity addToFavourites(@RequestBody FavouritesCreate favouritesCreate){
        return favouritesService.addToFavourites(favouritesCreate);
    }

    @GetMapping()
    public List<FavouritesDto> getFavourites() {
        return favouritesService.getFavourites();
    }

    @DeleteMapping("/{favouriteId}")
    public String deleteFavourite(@PathVariable Integer favouriteId){
        return favouritesService.deleteFavourite(favouriteId);
    }

}
