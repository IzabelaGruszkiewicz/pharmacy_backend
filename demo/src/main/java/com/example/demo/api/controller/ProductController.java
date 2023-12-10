package com.example.demo.api.controller;

import com.example.demo.api.dto.ProductCreate;
import com.example.demo.api.dto.ProductDto;
import com.example.demo.business.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("/product")
public class ProductController {
    private ProductService productService;

    @GetMapping(value = "/all")
    public List<ProductDto> getAllProduct(){
        return productService.getALLProduct();
    }

    @GetMapping(value = "/{name}")
    public List<ProductDto> getByName(@PathVariable String name){
        return productService.getByName(name);
    }

    @PostMapping(value = "/add")
    public ResponseEntity<ProductDto> addProduct(@RequestBody ProductCreate productCreate){
        ProductDto productDto = productService.addProduct(productCreate);
        return ResponseEntity.ok().body(productDto);
    }
}
