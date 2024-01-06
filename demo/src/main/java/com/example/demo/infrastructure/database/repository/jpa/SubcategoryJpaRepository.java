package com.example.demo.infrastructure.database.repository.jpa;

import com.example.demo.infrastructure.database.entity.SubcategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubcategoryJpaRepository extends JpaRepository<SubcategoryEntity, Integer> {

}
