package com.escuela.titulacion.app.entity.catalogos;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity(name = "cat_carreras")
@Data
public class CatCarreraEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;  
	private String id_carrera; 
	private String clave_carrera; 
	private String descripcion; 
	private String no_rvoe; 
	private String fecha_rvoe; 
	private String clave_plan; 
	private String calif_minima; 
	private String calif_maxima; 
	private String calif_aprobatoria; 
	private String numero_ciclos; 
	private String nivel_educativo; 
	private String modalidad; 
	private String tipo_rvoe; 
	private String entidad_federativa_institucion; 
	private String sostenimiento; 
	private String nombrecarreratitulo;

}
