package com.example.demo.business;

import com.example.demo.api.dto.ProductCreate;
import com.example.demo.api.dto.ProductDto;
import com.example.demo.infrastructure.database.entity.ProductEntity;
import com.example.demo.infrastructure.database.repository.jpa.ProductJpaRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class ProductService {
    private ProductJpaRepository productJpaRepository;

    public List<ProductDto> getALLProduct() {
        List<ProductEntity> allProducts = productJpaRepository.findAll();
        return allProducts.stream()
                .map(ProductDto::new)
                .collect(Collectors.toList());

    }
    public List<ProductDto> getByName(String name) {
        List<ProductEntity> byName = productJpaRepository.findByName(name);
        return byName.stream()
                .map(p->new ProductDto(p))
                .collect(Collectors.toList());
    }

    public ProductDto addProduct(ProductCreate productCreate) {
        ProductEntity product = new ProductEntity(productCreate);
        ProductEntity savedProduct = productJpaRepository.save(product);
        ProductDto productDto = new ProductDto(savedProduct);
        return productDto;
    }
}
