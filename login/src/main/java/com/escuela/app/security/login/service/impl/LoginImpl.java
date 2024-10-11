package com.escuela.app.security.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;

import com.escuela.app.security.config.Constantes;
import com.escuela.app.security.config.JWTAutorizacionConfig;
import com.escuela.app.security.login.dto.ResponseUserLogin;
import com.escuela.app.security.login.service.LoginService;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;

@Service
public class LoginImpl implements LoginService {
	

	


	@Autowired
	private JWTAutorizacionConfig autorizacionConfig;

	@Override
	public ResponseUserLogin inicioSesion(String user, String password) {
		// TODO Auto-generated method stub
		String token = autorizacionConfig.generatorJWT(user, password);
		System.out.println("******* "+token);
		return new ResponseUserLogin(user,token);
	}

	@Override
	public Jws<Claims> parseJwt(String token) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
