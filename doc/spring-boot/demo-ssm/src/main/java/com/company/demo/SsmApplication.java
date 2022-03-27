package com.company.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//mybatis的包扫描
@MapperScan("com.company.demo.mapper")
public class SsmApplication {
    public static void main(String[] args) {
        SpringApplication.run(SsmApplication.class, args);
    }
}
