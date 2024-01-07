package com.example.pharmacy.infrastructure.database.repository.jpa;

import com.example.pharmacy.infrastructure.database.entity.PharmacyEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PharmacyJpaRepository extends JpaRepository<PharmacyEntity, Integer> {
}
