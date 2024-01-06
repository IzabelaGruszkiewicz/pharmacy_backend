package com.example.demo.business;

import com.example.demo.api.dto.*;
import com.example.demo.infrastructure.database.entity.CategoryEntity;
import com.example.demo.infrastructure.database.entity.FavouritesEntity;
import com.example.demo.infrastructure.database.entity.ProductEntity;
import com.example.demo.infrastructure.database.entity.SubcategoryEntity;
import com.example.demo.infrastructure.database.repository.jpa.CategoryJpaRepository;
import com.example.demo.infrastructure.database.repository.jpa.FavouritesJpaRepository;
import com.example.demo.infrastructure.database.repository.jpa.ProductJpaRepository;
import com.example.demo.infrastructure.database.repository.jpa.SubcategoryJpaRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class ProductService {
    private ProductJpaRepository productJpaRepository;
    private CategoryJpaRepository categoryJpaRepository;
    private SubcategoryJpaRepository subcategoryJpaRepository;
    private FavouritesJpaRepository favouritesJpaRepository;

    public List<ProductEntity> getALLProduct() {
        List<ProductEntity> allProducts = productJpaRepository.findAll();
        return allProducts;

    }

    public List<ProductDto> getByName(String name) {
        List<ProductEntity> byName = productJpaRepository.findByName(name);
        return byName.stream()
                .map(ProductDto::new)
                .collect(Collectors.toList());
    }

    public ProductDto addProduct(ProductCreate productCreate) {
        CategoryEntity categoryEntity = categoryJpaRepository.findById(productCreate.getCategoryId()).orElseThrow(
                () -> new RuntimeException("Nie znaleziono kategorii o podanym id: " + productCreate.getCategoryId())
        );

        SubcategoryEntity subcategoryEntity = subcategoryJpaRepository.findById(productCreate.getSubcategoryId()).orElseThrow(
                () -> new RuntimeException("Nie znaleziono podkategorii o podanym id: " + productCreate.getSubcategoryId())
        );

        ProductEntity product = new ProductEntity(productCreate, categoryEntity, subcategoryEntity);
        ProductEntity savedProduct = productJpaRepository.save(product);
        ProductDto productDto = new ProductDto(savedProduct);
        return productDto;
    }

    public List<ProductDto> getByCategoryId(Integer categoryId) {
        List<ProductEntity> byCategoryId = productJpaRepository.findByCategoryCategoryId(categoryId);
        return byCategoryId.stream()
                .map(ProductDto::new)
                .collect(Collectors.toList());
    }

    public BestsellersDto getBestsellers(Integer categoryId) {
        List<ProductEntity> byCategoryId = productJpaRepository.findByCategoryCategoryId(categoryId);
        List<ProductEntity> collected = byCategoryId.stream()
                .limit(4)
                .toList();


        List<ProductDetailsDto> collect = collected.stream()
                .map(ProductDetailsDto::new)
                .collect(Collectors.toList());

        BestsellersDto bestsellers = new BestsellersDto();
        String categoryName = byCategoryId.get(0).getCategory().getName();
        String heroPhotoPath = "";
        if (categoryName.equalsIgnoreCase("leki")) {
            heroPhotoPath = "https://apteka-melissa.pl/blog_zdjecia/leki-oryginalne-a-generyczne-czym-sie-roznia.jpg";
        } else if (categoryName.equalsIgnoreCase("suplementy")) {
            heroPhotoPath = "https://surojadek.com/wp-content/uploads/jakie-witaminy-na-wzmocnienie-odpornosci-1.jpg";
        } else if (categoryName.equalsIgnoreCase("drogeria")) {
            heroPhotoPath = "https://www.gobli.pl/blog/wp-content/uploads/2021/06/naturalne-kosmetyki-do-twarzy-1024x390.jpg";
        }

        bestsellers.setPathToHeroImage(heroPhotoPath);
        bestsellers.setBestsellers(collect);
        return bestsellers;
    }

    public List<ProductPageDto> getByCategoryNameAndSubcategory(String category, String subcategory, int limit, int page) {
        Pageable pageable = PageRequest.of(--page, limit);
        Page<ProductEntity> result = productJpaRepository.findProductByNameInCategoryAndSubcategory(category, subcategory, pageable);
        long totalElements = result.getTotalElements();
        List<ProductEntity> content = result.getContent();
        return content.stream()
                .map(e -> new ProductPageDto(e, totalElements))
                .toList();
    }

    public ProductDetailsDto getByProductId(Integer productId) {
        ProductEntity product = productJpaRepository.findById(productId).orElseThrow(
                () -> new RuntimeException("Nie znaleziono produktu o podanym id: " + productId));
        return new ProductDetailsDto(product);
    }


//    public ProductDto addProductToMagazine(ProductCreate productCreate) {
//
//    }
}
