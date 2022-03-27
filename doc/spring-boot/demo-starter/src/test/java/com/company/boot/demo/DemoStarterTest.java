package com.company.boot.demo;

import com.company.boot.demo.starter.autoconfigure.DemoService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest
public class DemoStarterTest {

    @Autowired
    private DemoService demoService;

    @Test
    void test01() {
        Assertions.assertEquals(demoService.getMsg(), "demo starter");
    }
}
