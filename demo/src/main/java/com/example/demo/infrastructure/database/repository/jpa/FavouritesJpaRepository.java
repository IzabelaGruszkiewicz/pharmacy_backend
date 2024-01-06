package com.example.demo.infrastructure.database.repository.jpa;

import com.example.demo.infrastructure.database.entity.CategoryEntity;
import com.example.demo.infrastructure.database.entity.FavouritesEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FavouritesJpaRepository extends JpaRepository<FavouritesEntity, Integer> {
}
