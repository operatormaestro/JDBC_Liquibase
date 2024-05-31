package ru.netology.jdbc.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.jdbc.repository.JDBCRepository;

import java.util.List;

@RestController
public class JDBCController {
    private final JDBCRepository jdbcRepository;

    public JDBCController(JDBCRepository jdbcRepository) {
        this.jdbcRepository = jdbcRepository;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        return jdbcRepository.getProductName(name);
    }
}
