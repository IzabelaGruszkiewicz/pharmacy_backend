package com.example.demo.infrastructure.database.repository.jpa;

import com.example.demo.infrastructure.database.entity.ProductOrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductOrderJpaRepository extends JpaRepository<ProductOrderEntity, Integer> {
}