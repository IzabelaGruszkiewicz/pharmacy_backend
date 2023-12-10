package com.example.demo.infrastructure.database.repository.jpa;

import com.example.demo.infrastructure.database.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface ProductJpaRepository extends JpaRepository<ProductEntity, Integer> {
    public List<ProductEntity> findByName(String name);
    public List<ProductEntity> findByPriceLessThan(BigDecimal price);

}
