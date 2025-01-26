package com.mycompany.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Hello world!
 */
@SpringBootApplication
@RestController
public class App {
    private static final String MESSAGE = "Hello World Updated 123!";

    @GetMapping("/")
    public String getMessage() {
        return MESSAGE;
    }

    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }
}

