package com.example.springboot_ms_aws_deply;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
@RequestMapping("/demo")
public class RootController {

    @GetMapping("/data")
    public String getProducts() {
        return "Welcome to Spring Boot Application Deployed on AWS!";
    }
}