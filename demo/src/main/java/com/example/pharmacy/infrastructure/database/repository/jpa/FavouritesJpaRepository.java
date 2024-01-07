package com.example.pharmacy.infrastructure.database.repository.jpa;

import com.example.pharmacy.infrastructure.database.entity.FavouritesEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FavouritesJpaRepository extends JpaRepository<FavouritesEntity, Integer> {
}
