package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoApplication2 {

    @RequestMapping("/")
    public String home() {
        return "Hello Spring Boot with Docker";
    }

}