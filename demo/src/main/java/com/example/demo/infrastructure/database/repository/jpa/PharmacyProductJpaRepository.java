package com.example.demo.infrastructure.database.repository.jpa;

import com.example.demo.infrastructure.database.entity.PharmacyProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PharmacyProductJpaRepository extends JpaRepository<PharmacyProductEntity, Integer> {
}
