package com.example.demo.infrastructure.database.repository.jpa;

import com.example.demo.infrastructure.database.entity.CategoryEntity;
import com.example.demo.infrastructure.database.entity.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryJpaRepository extends JpaRepository<CategoryEntity, Integer> {
}
