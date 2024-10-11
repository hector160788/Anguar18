package com.escuela.titulacion.app.ejemplo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestClient;

@RestController
public class Ejemplo {


	@GetMapping(value = "/")
	public String saludo() {
		
		return "hola";
	}
}
