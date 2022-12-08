package com.redhat.springbootdmnkafkasample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.kafka.annotation.EnableKafka;

@EnableKafka
@SpringBootApplication
public class SpringbootDmnKafkaSampleConsumer {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootDmnKafkaSampleConsumer.class, args);
	}

}
