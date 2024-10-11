package com.escuela.titulacion.app.repository.catalogos;

import org.springframework.data.repository.CrudRepository;

import com.escuela.titulacion.app.entity.catalogos.CatCarreraEntity;

public interface CarreraRepo extends CrudRepository<CatCarreraEntity, Integer> {

}
