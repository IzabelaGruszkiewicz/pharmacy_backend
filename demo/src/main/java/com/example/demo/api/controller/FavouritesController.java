package com.example.demo.api.controller;

import com.example.demo.api.dto.FavouritesCreate;
import com.example.demo.api.dto.FavouritesDto;
import com.example.demo.business.FavouritesService;
import com.example.demo.infrastructure.database.entity.FavouritesEntity;
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
