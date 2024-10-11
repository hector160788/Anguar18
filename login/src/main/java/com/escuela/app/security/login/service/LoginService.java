package com.escuela.app.security.login.service;

import com.escuela.app.security.config.Constantes;
import com.escuela.app.security.login.dto.ResponseUserLogin;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;

public interface LoginService {
	
	public ResponseUserLogin inicioSesion(String user,String password);
	public Jws<Claims> parseJwt(String token);


}
