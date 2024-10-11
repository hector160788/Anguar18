package com.escuela.app.security.config;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Configuration
public class JWTAutorizacionConfig {
	
	public String generatorJWT(String username, String password) {

		// Validar usuario y contraseña
		//boolean isValidUser = userService.validateUser(username, password);
//		if (!isValidUser) {
//			throw new RuntimeException("Invalid username/password");
//		}
		List<GrantedAuthority> grantedAuthorities = AuthorityUtils.commaSeparatedStringToAuthorityList("ROLE_USER,ROLE_SISTEMAS");

//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        List<GrantedAuthority> roles = (List<GrantedAuthority>) authentication.getAuthorities();

		String token = Jwts.builder().setId(username + "access").setSubject(username)
				.claim("authorities",
						grantedAuthorities.stream().map(GrantedAuthority::getAuthority).collect(Collectors.toList()))
				.claim("saludo", "Hola Mundo JWT")
				.setIssuedAt(new Date(System.currentTimeMillis()))
				//metodo para expirar token basado en tiempo y la clase Constantes
				.setExpiration(new Date(System.currentTimeMillis() + Constantes.TOKEN_EXPIRATION_TIME))/*tiempo de exiparacion basada en timepo*/
				//metodo para expirar el token a la media noche
//				.setExpiration(calculateExpirationDate())/*expiracion de token basa en dias esta funcion caducara el token todos los dias a las 12:00 am*/
				.signWith(Constantes.getSigningKey(Constantes.SUPER_SECRET_KEY), SignatureAlgorithm.HS512).compact();

		return  token;
	}
	
	private Date calculateExpirationDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.add(Calendar.DAY_OF_YEAR, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

}
