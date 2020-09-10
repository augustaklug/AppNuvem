package br.infnet.augusta.appnuvem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class AppnuvemApplication {

    public static void main(String[] args) {
        SpringApplication.run(AppnuvemApplication.class, args);
    }

}
