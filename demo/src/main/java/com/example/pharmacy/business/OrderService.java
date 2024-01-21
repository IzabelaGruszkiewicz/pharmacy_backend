package com.example.pharmacy.business;

import com.example.pharmacy.api.dto.OrderCreate;
import com.example.pharmacy.api.dto.OrderDto;
import com.example.pharmacy.infrastructure.database.entity.*;
import com.example.pharmacy.infrastructure.database.repository.jpa.*;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class OrderService {
    private OrderJpaRepository orderJpaRepository;
    private PaymentJpaRepository paymentJpaRepository;
    private DeliveryJpaRepository deliveryJpaRepository;
    private CustomerJpaRepository customerJpaRepository;
    private AddressJpaRepository addressJpaRepository;

    public OrderDto addOrder(OrderCreate orderCreate) {
        CustomerEntity foundCustomer = customerJpaRepository.findByCustomerHash(orderCreate.getCustomerHash());

        if (foundCustomer == null) {
            foundCustomer = new CustomerEntity(orderCreate);
            customerJpaRepository.save(foundCustomer);
        }

        AddressEntity addressEntity = new AddressEntity(orderCreate, foundCustomer);
        addressJpaRepository.save(addressEntity);

        PaymentEntity payment = paymentJpaRepository.findByName(orderCreate.getSelectedPayment());
        DeliveryEntity delivery = deliveryJpaRepository.findByName(orderCreate.getSelectedDelivery());
        OrderEntity order = new OrderEntity(orderCreate, payment, delivery, foundCustomer);
        OrderEntity savedOrder = orderJpaRepository.save(order);
        return new OrderDto(savedOrder);
    }

    public List<OrderDto> getAllOrder() {
        List<OrderEntity> all = orderJpaRepository.findAll();
        return all.stream()
                .map(a -> new OrderDto(a))
                .toList();
    }

    public List<OrderDto> getAllOrdersByCustomerHash(String customerHash) {
        List<OrderEntity> orders = orderJpaRepository.findByCustomerCustomerHash(customerHash);
        return orders.stream()
                .map(o->new OrderDto(o))
                .toList();
    }
}
