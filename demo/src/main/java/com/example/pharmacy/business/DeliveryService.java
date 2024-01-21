package com.example.pharmacy.business;

import com.example.pharmacy.api.dto.DeliveryCreate;
import com.example.pharmacy.api.dto.DeliveryDto;
import com.example.pharmacy.infrastructure.database.entity.DeliveryEntity;
import com.example.pharmacy.infrastructure.database.repository.jpa.DeliveryJpaRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class DeliveryService {
    private DeliveryJpaRepository deliveryJpaRepository;

    public DeliveryDto addDelivery(DeliveryCreate deliveryCreate) {
        DeliveryEntity delivery = new DeliveryEntity(deliveryCreate);
        DeliveryEntity savedDelivery = deliveryJpaRepository.save(delivery);
        return new DeliveryDto(savedDelivery);
    }

    public List<DeliveryDto> getAllDelivery() {
        List<DeliveryEntity> all = deliveryJpaRepository.findAll();
        return all.stream()
                .map(d -> new DeliveryDto(d))
                .toList();
    }
}
