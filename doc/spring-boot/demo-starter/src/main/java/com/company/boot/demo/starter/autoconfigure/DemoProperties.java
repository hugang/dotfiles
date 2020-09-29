package com.company.boot.demo.starter.autoconfigure;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "demo")
public class DemoProperties {

    private String name="demo starter";

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
