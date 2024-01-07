package com.example.pharmacy.infrastructure.database.repository.jpa;

import com.example.pharmacy.infrastructure.database.entity.SubcategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubcategoryJpaRepository extends JpaRepository<SubcategoryEntity, Integer> {

}
