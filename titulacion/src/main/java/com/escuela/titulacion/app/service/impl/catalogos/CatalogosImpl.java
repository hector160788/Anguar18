package com.escuela.titulacion.app.service.impl.catalogos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.escuela.titulacion.app.entity.catalogos.CatCarreraEntity;
import com.escuela.titulacion.app.repository.catalogos.CarreraRepo;
import com.escuela.titulacion.app.service.catalogos.CatalogosService;

@Service
public class CatalogosImpl implements CatalogosService {

	@Autowired
	private CarreraRepo carreraRepo;

	@Override
	public List<CatCarreraEntity> getCatCarrarera() {
		// TODO Auto-generated method stub
		return (List<CatCarreraEntity>) carreraRepo.findAll();
	}

}
