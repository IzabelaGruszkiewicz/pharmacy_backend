package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@With
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "produkt")
public class Produkt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer produktId;


}
