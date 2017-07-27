package com.bao;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class MsDockerfileApplication {

	@GetMapping("/")
	public String test(){
		return "test";
	}

	public static void main(String[] args) {
		SpringApplication.run(MsDockerfileApplication.class, args);
	}
}
