package com.escuela.titulacion.app.dto.titulacion;

import https.www_siged_sep_gob_mx.titulos.TituloElectronico.Antecedente;
import https.www_siged_sep_gob_mx.titulos.TituloElectronico.Carrera;
import https.www_siged_sep_gob_mx.titulos.TituloElectronico.Expedicion;
import https.www_siged_sep_gob_mx.titulos.TituloElectronico.Institucion;
import https.www_siged_sep_gob_mx.titulos.TituloElectronico.Profesionista;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TitulacionRequest {
	
	private Institucion institucion;
	private Carrera carrera;
	private Profesionista profesionista;
	private Expedicion expedicion;
	private Antecedente antecedente;

}
