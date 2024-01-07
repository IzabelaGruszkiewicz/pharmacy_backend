package com.example.pharmacy.infrastructure.database.repository.jpa;

import com.example.pharmacy.infrastructure.database.entity.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface ProductJpaRepository extends JpaRepository<ProductEntity, Integer> {
    public List<ProductEntity> findByName(String name);

    public List<ProductEntity> findByCategoryCategoryId(Integer categoryId);
    @Query("SELECT p FROM ProductEntity p WHERE p.category.name = :categoryName " +
            "AND p.subcategory.name = :subcategoryName")
    Page<ProductEntity> findProductByNameInCategoryAndSubcategory(
            @Param("categoryName") String categoryName,
            @Param("subcategoryName") String subcategoryName,
            Pageable pageable);
    public List<ProductEntity> findByCategoryNameAndSubcategoryName(String categoryName, String subcategoryName);
    public List<ProductEntity> findByPriceLessThan(BigDecimal price);

    public List<ProductEntity> findByPriceLessThan(Double price);



}
