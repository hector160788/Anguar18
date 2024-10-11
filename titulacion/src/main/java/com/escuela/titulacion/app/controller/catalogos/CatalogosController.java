package com.escuela.titulacion.app.controller.catalogos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.escuela.titulacion.app.entity.catalogos.CatCarreraEntity;
import com.escuela.titulacion.app.service.catalogos.CatalogosService;

@RestController
@RequestMapping(path = "titulacion/catalogos")
public class CatalogosController {
	@Autowired
	private CatalogosService catalogosService;

	@PostMapping(value = "/getcatcarrera")
	public List<CatCarreraEntity> getCatCarrera() {

		return catalogosService.getCatCarrarera();
	}

}
