package com.example.pharmacy.infrastructure.database.entity;

import com.example.pharmacy.api.dto.OrderCreate;
import com.example.pharmacy.api.dto.OrderStatus;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "orders")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private Integer orderId;

    @Column(name = "date_order")
    private LocalDateTime dateOrder;

    @Column(name = "status")
    private String status;

    @Column(name = "total_price")
    private double totalPrice;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "customer_id")
    private CustomerEntity customer;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "payment_id")
    private PaymentEntity payment;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "delivery_id")
    private DeliveryEntity delivery;

    public OrderEntity(OrderCreate orderCreate, PaymentEntity payment, DeliveryEntity delivery, CustomerEntity foundCustomer) {
        this.dateOrder=LocalDateTime.now();
        this.status=OrderStatus.CREATED.name();
        this.totalPrice=orderCreate.getTotalCost();
        this.customer=foundCustomer;
        this.payment=payment;
        this.delivery=delivery;
    }
}
