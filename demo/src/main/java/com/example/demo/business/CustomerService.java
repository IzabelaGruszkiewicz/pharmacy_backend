package com.example.demo.business;

import com.example.demo.api.dto.CustomerDto;
import com.example.demo.infrastructure.database.entity.CustomerEntity;
import com.example.demo.infrastructure.database.repository.jpa.CustomerJpaRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class CustomerService {
    private CustomerJpaRepository customerJpaRepository;
    public List<CustomerDto> getAllCustomers() {
        List<CustomerEntity> allCustomers = customerJpaRepository.findAll();
        return allCustomers.stream()
                .map(c->new CustomerDto(c))
                .collect(Collectors.toList());
    }
}
