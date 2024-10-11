package com.escuela.app.security.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authorization.method.HandleAuthorizationDenied;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.escuela.app.security.login.dto.RequestUserLogin;
import com.escuela.app.security.login.dto.ResponseUserLogin;
import com.escuela.app.security.login.service.LoginService;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping(value = "/api/v1")
@Slf4j
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@PostMapping(value = "/login")
	public ResponseUserLogin inicioSesion(@RequestBody RequestUserLogin login) {
		log.info(login.toString());
		return loginService.inicioSesion(login.getUser(), login.getPassword());
	}
	
	@GetMapping(value = "/validatoken")
	public boolean validacionToken() {
		System.out.println("exito*******************");
		
		return true;
	}

}
