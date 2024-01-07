package com.example.pharmacy.business;

import com.example.pharmacy.api.dto.*;
import com.example.pharmacy.infrastructure.database.entity.CategoryEntity;
import com.example.pharmacy.infrastructure.database.entity.ProductEntity;
import com.example.pharmacy.infrastructure.database.entity.SubcategoryEntity;
import com.example.pharmacy.infrastructure.database.repository.jpa.CategoryJpaRepository;
import com.example.pharmacy.infrastructure.database.repository.jpa.ProductJpaRepository;
import com.example.pharmacy.infrastructure.database.repository.jpa.SubcategoryJpaRepository;
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

    public List<ProductDto> getAllProducts() {
        List<ProductEntity> allProducts = productJpaRepository.findAll();
        return  allProducts.stream()
                .map(ProductDto::new)
                .toList();
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
        return new ProductDto(savedProduct);
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
        String heroPhotoPath = getHeroPath(categoryName);

        bestsellers.setPathToHeroImage(heroPhotoPath);
        bestsellers.setBestsellers(collect);
        return bestsellers;
    }

    private static String getHeroPath(String categoryName) {
        String heroPhotoPath = "";
        if (categoryName.equalsIgnoreCase("leki")) {
            heroPhotoPath = "https://www.oecd.org/media/oecdorg/directorates/directorateforemploymentlabourandsocialaffairs/health/Pharmaceuticals.jpg";
        } else if (categoryName.equalsIgnoreCase("suplementy")) {
            heroPhotoPath = "https://cdn.pixabay.com/photo/2018/06/24/04/36/cosmetic-oil-3493928_1280.jpg";
        } else if (categoryName.equalsIgnoreCase("drogeria")) {
            heroPhotoPath = "https://www.cosmeticsdesign-europe.com/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/publications/cosmetics/cosmeticsdesign-europe.com/article/2021/03/22/cannabis-beauty-cbd-cosmetics-innovation-and-science-soars-but-hurdles-remain-says-belinda-carli/12290515-1-eng-GB/Cannabis-beauty-CBD-cosmetics-innovation-and-science-soars-but-hurdles-remain-says-Belinda-Carli.jpg";
        }
        return heroPhotoPath;
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

    public List<ProductDetailsDto> getDiscounts(Integer numberOfElements) {
        List<ProductDetailsDto> discounts = new ArrayList<>();
        for (int i = 0; i < numberOfElements; i++) {
            discounts.add(new ProductDetailsDto(productJpaRepository.findById((int) Math.ceil(numberOfElements * 0.5* (i +1))).orElseThrow(
                    () -> new RuntimeException("Nie znaleziono produktu o podanym id")
            )));
        }

        return discounts;
    }

}
