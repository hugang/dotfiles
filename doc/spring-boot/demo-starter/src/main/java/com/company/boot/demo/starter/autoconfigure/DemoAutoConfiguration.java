package com.company.boot.demo.starter.autoconfigure;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/*
自动装配组建配置
resources/META-INF/spring.factories
org.springframework.boot.autoconfigure.EnableAutoConfiguration=\
    com.company.boot.demo.starter.autoconfigure.DemoAutoConfiguration
 */

//标记为配置类
@Configuration
//满足条件是自动装配：存在DemoService类
@ConditionalOnClass(DemoService.class)
//通过EnableConfigurationPropertiesRegistrar来装配属性ConfigurationProperties类
@EnableConfigurationProperties(DemoProperties.class)

public class DemoAutoConfiguration {

    @Autowired
    private DemoProperties demoProperties;

    //装载到容器
    @Bean
    //不重复装载
    @ConditionalOnMissingBean(DemoService.class)
    public DemoService demoService(){
        DemoService demoService = new DemoService();
        demoService.setMsg(demoProperties.getName());
        return demoService;
    }
}
