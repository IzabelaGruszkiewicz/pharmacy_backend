package com.example.pharmacy.business;

import com.example.pharmacy.api.dto.PaymentDto;
import com.example.pharmacy.infrastructure.database.entity.PaymentEntity;
import com.example.pharmacy.infrastructure.database.repository.jpa.PaymentJpaRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class PaymentService {
    private final PaymentJpaRepository paymentJpaRepository;
    public List<PaymentDto> getAllPayment() {
        List<PaymentEntity> all = paymentJpaRepository.findAll();
        return all.stream()
                .map(d -> new PaymentDto(d))
                .toList();
    }
}
