package hxy.dragon;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class AirShareApplication {

	public static ConfigurableApplicationContext run;

	public static void main(String[] args) {
		run = SpringApplication.run(AirShareApplication.class, args);
	}

}
