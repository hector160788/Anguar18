package com.escuela.titulacion.app.filter.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestClient;

import com.escuela.titulacion.app.filter.ValidatorJWT;

@Configuration
public class FilterJWTValidator {

	@Bean
	public FilterRegistrationBean<ValidatorJWT> loggingFilter() {
		FilterRegistrationBean<ValidatorJWT> registrationBean = new FilterRegistrationBean<>();
		System.out.println("FilterRegistrationBean");
		registrationBean.setFilter(new ValidatorJWT());

		registrationBean.addUrlPatterns("/*");
		registrationBean.setOrder(2);

		return registrationBean;

	}

}
