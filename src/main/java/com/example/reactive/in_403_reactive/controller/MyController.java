package com.example.reactive.in_403_reactive.controller;

import com.example.reactive.in_403_reactive.entity.Client;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;

@RestController
public class MyController {

    @GetMapping("/clients")
    public Flux<Client> getClients() {
        Flux<Client> clients = Flux.just(
                        new Client(1L, "Vasya", "Pypkin", 18),
                        new Client(2L, "Iva", "Pypkina", 19),
                        new Client(3L, "Inna", "Pypkina", 20)
                )
                .skip(0)
                .take(2);

        return clients;
    }
}