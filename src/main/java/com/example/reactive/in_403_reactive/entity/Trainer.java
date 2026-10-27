package com.example.reactive.in_403_reactive.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Trainer {
    private Long id;
    private String firstName;
    private String lastName;
    private String specialization;
    private int experienceYears;
}