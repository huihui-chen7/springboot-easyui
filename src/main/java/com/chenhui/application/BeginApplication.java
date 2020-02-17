package com.chenhui.application;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan(basePackages= {"com.chenhui.controler","com.chenhui.Admin.service.Impl"})
@MapperScan(value="com.chenhui.Admin.dao")
public class BeginApplication {

	public static void main(String[] args) {
			//启动springboot框架
			SpringApplication.run(BeginApplication.class, args);
		
	}

}
