package com.example.pharmacy.api.controller;

import com.example.pharmacy.api.dto.*;
import com.example.pharmacy.business.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin
@RequestMapping("/product")
public class ProductController {
    private ProductService productService;

    @GetMapping(value = "/all")
    public List<ProductDto> getAllProduct() {
        return productService.getAllProducts();
    }

    @GetMapping(value = "/{productId}")
    public ProductDetailsDto getByProductId(@PathVariable Integer productId) {
        return productService.getByProductId(productId);
    }

    @GetMapping(value = "/category/{categoryId}")
    public List<ProductDto> getByCategoryId(@PathVariable Integer categoryId) {
        return productService.getByCategoryId(categoryId);
    }

    @GetMapping()
    public List<ProductPageDto> getByCategoryNameAndSubcategory(
            @RequestParam(name = "category") String category,
            @RequestParam(name = "subcategory") String subcategory,
            @RequestParam(name = "_limit", required = false) int limit,
            @RequestParam(name = "_page", required = false) int page

    ) {
        return productService.getByCategoryNameAndSubcategory(category, subcategory, limit, page);
    }

    @GetMapping(value = "/category/bestsellers/{categoryId}")
    public BestsellersDto getByBestsellers(@PathVariable Integer categoryId) {
        return productService.getBestsellers(categoryId);
    }

    @PostMapping(value = "/add")
    public ResponseEntity<ProductDto> addProduct(@RequestBody ProductCreate productCreate) {
        ProductDto productDto = productService.addProduct(productCreate);
        return ResponseEntity.ok().body(productDto);
    }

    @GetMapping(value = "/discounts/{numberOfProducts}")
    public List<ProductDetailsDto> getDiscounts(@PathVariable Integer numberOfProducts) {
        return productService.getDiscounts(numberOfProducts);
    }
}
