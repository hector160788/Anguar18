package com.escuela.app.security.config;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@EnableWebSecurity
@Configuration
public class WebSpringSecurity {
	
	@Autowired
	private JWTAutorizacionFilter jwtAuthorizationFilter;
	
	/*
	 * filtro de spring security para permitir accesos a las apis 
	 * */
	@Bean
	public SecurityFilterChain configure(HttpSecurity http) throws Exception {
		//se da acceso sin restriccion al endpoint de login ya que siempre debe estar abierto 
		//para ser invocado desde el front
        http.csrf((csrf) -> csrf.disable())
                .authorizeHttpRequests(authz ->
                        authz.requestMatchers(HttpMethod.POST, "/api/v1/login").permitAll().
                        requestMatchers(HttpMethod.GET, "/api/v1/login2").permitAll()//
                        .anyRequest().authenticated()

                )
                /*agregamos los cors para permitir el acceso a las apis externas por seguridad*/
                .addFilterAfter(corsFilter(), CorsFilter.class)
/*se crea un filtro de seguridad de JWT para validar o crear el token*/
                .addFilterAfter(jwtAuthorizationFilter, UsernamePasswordAuthenticationFilter.class);
		return http.build();
	}
	
	/*se inyecta bean de cors donde se configuran los endpoint entrantes para las apis 
	 * se deben agregar nuevos por cada api externa*/
	@Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowCredentials(true);
        // Replace "http://localhost:3000" with the URL of your React app
        config.setAllowedOrigins(Arrays.asList("http://localhost:5200","http://localhost:3000","http://localhost:4200"));
        config.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE")); // Métodos permitidos
        config.setAllowedHeaders(Arrays.asList("*")); // Permitir todos los encabezados
        config.setAllowCredentials(true); // Permitir el uso de cookies o autenticación
        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }

}
