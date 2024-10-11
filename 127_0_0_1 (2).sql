-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2024 a las 23:17:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marhecdigital`
--
CREATE DATABASE IF NOT EXISTS `marhecdigital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `marhecdigital`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_autorizacionreconocimiento`
--

CREATE TABLE `cat_autorizacionreconocimiento` (
  `ID_AUTORIZACION_RECONOCIMIENTO` int(11) NOT NULL,
  `AUTORIZACION_RECONOCIMIENTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_autorizacionreconocimiento`
--

INSERT INTO `cat_autorizacionreconocimiento` (`ID_AUTORIZACION_RECONOCIMIENTO`, `AUTORIZACION_RECONOCIMIENTO`) VALUES
(1, 'RVOE FEDERAL'),
(2, 'RVOE ESTATAL'),
(3, 'AUTORIZACIÓN FEDERAL'),
(4, 'AUTORIZACIÓN ESTATAL'),
(5, 'ACTA DE SESIÓN'),
(6, 'ACUERDO DE INCORPORACIÓN'),
(7, 'ACUERDO SECRETARIAL SEP'),
(8, 'DECRETO DE CREACIÓN'),
(9, 'OTRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_cargos`
--

CREATE TABLE `cat_cargos` (
  `ID` int(11) NOT NULL,
  `ID_CARGO` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_cargos`
--

INSERT INTO `cat_cargos` (`ID`, `ID_CARGO`, `DESCRIPCION`) VALUES
(1, 1, 'DIRECTOR'),
(2, 2, 'SUBDIRECTOR'),
(3, 3, 'RECTOR'),
(4, 4, 'VICERRECTOR'),
(5, 5, 'RESPONSABLE DE EXPEDICIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_carreras`
--

CREATE TABLE `cat_carreras` (
  `ID` int(11) NOT NULL,
  `ID_CARRERA` int(11) DEFAULT NULL,
  `CLAVE_CARRERA` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(150) DEFAULT NULL,
  `NO_RVOE` varchar(45) DEFAULT NULL,
  `FECHA_RVOE` varchar(45) DEFAULT NULL,
  `CLAVE_PLAN` varchar(45) DEFAULT NULL,
  `CALIF_MINIMA` varchar(2) DEFAULT NULL,
  `CALIF_MAXIMA` varchar(2) DEFAULT NULL,
  `CALIF_APROBATORIA` varchar(5) DEFAULT NULL,
  `NUMERO_CICLOS` int(11) DEFAULT NULL,
  `NIVEL_EDUCATIVO` varchar(45) DEFAULT NULL,
  `MODALIDAD` varchar(45) DEFAULT NULL,
  `TIPO_RVOE` varchar(45) DEFAULT NULL,
  `ENTIDAD_FEDERATIVA_INSTITUCION` varchar(45) DEFAULT NULL,
  `SOSTENIMIENTO` varchar(45) DEFAULT NULL,
  `NOMBRECARRERATITULO` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='	';

--
-- Volcado de datos para la tabla `cat_carreras`
--

INSERT INTO `cat_carreras` (`ID`, `ID_CARRERA`, `CLAVE_CARRERA`, `DESCRIPCION`, `NO_RVOE`, `FECHA_RVOE`, `CLAVE_PLAN`, `CALIF_MINIMA`, `CALIF_MAXIMA`, `CALIF_APROBATORIA`, `NUMERO_CICLOS`, `NIVEL_EDUCATIVO`, `MODALIDAD`, `TIPO_RVOE`, `ENTIDAD_FEDERATIVA_INSTITUCION`, `SOSTENIMIENTO`, `NOMBRECARRERATITULO`) VALUES
(1, 101, 621317, 'Comercio Internacional', '20160571', '2016-07-12', '2016', '5', '10', '6.00', 9, 'LICENCIATURA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN COMERCIO INTERNACIONAL'),
(2, 102, 611318, 'Comunicación Organizacional', '20160569', '2016-07-12', '2016', '5', '10', '6.00', 9, 'LICENCIATURA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN COMUNICACIÓN ORGANIZACIONAL'),
(3, 103, 621301, 'Contaduría', '20160568', '2016-07-12', '2016', '5', '10', '6.00', 9, 'LICENCIATURA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN CONTADURÍA'),
(4, 104, 602362, 'Criminología y Criminalística', '20181748', '2018-09-24', '2018', '5', '10', '6.00', 9, 'LICENCIATURA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN CRIMINOLOGÍA Y CRIMINALÍSTICA'),
(5, 105, 612301, 'Derecho Ordinario', '2005620', '2005-10-17', '2004', '5', '10', '6.00', 10, 'LICENCIATURA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN DERECHO'),
(6, 106, 612301, 'Derecho Mixto', '20171202', '2017-09-07', '2017', '5', '10', '6.00', 8, 'LICENCIATURA', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN DERECHO'),
(7, 107, 611314, 'Informática Administrativa', '20160570', '2016-07-12', '2016', '5', '10', '6.00', 9, 'LICENCIATURA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN INFORMÁTICA ADMINISTRATIVA'),
(8, 108, 245301, 'Pedagogía Ordinaria', '20081552', '2008-06-27', '2007', '5', '10', '6.00', 10, 'LICENCIATURA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN PEDAGOGÍA'),
(9, 109, 245301, 'Pedagogía Mixta', '20171371', '2017-10-16', '2017', '5', '10', '6.00', 9, 'LICENCIATURA', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN PEDAGOGÍA'),
(10, 201, 612514, 'Derecho Penal', '20081550', '2008-06-27', '2017', '5', '10', '6.00', 10, 'MAESTRIA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'MAESTRÍA EN DERECHO PENAL'),
(11, 202, 245501, 'Ciencias de la Educación', '20081548', '2008-06-27', '2007', '5', '10', '6.00', 6, 'MAESTRIA', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'MAESTRÍA EN CIENCIAS DE LA EDUCACIÓN'),
(12, 203, 244520, 'Formación Docente', '20171160', '2017-08-31', '2017', '5', '10', '6.00', 5, 'MAESTRIA', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'MAESTRÍA EN FORMACIÓN DOCENTE'),
(13, 301, 241603, 'Educación', '20160787', '2016-12-05', '2015', '5', '10', '6.00', 6, 'DOCTORADO', 'ESCOLARIZADA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'DOCTORADO EN EDUCACIÓN'),
(14, 302, 664607, 'Juicios Orales', '20171161', '2017-08-31', '2017', '5', '10', '6.00', 6, 'DOCTORADO', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'DOCTORADO EN JUICIOS ORALES'),
(15, 110, 558302, 'Ingeniería Civil', '20192312', '2019-06-04', '2019', '5', '10', '6.00', 10, 'LICENCIATURA', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN INGENIERIA CIVIL'),
(16, 111, 576357, 'Ingeniería Industrial', '20192310', '2019-06-04', '2019', '5', '10', '6.00', 10, 'LICENCIATURA', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN INGENIERIA INDUSTRIAL'),
(17, 112, 511303, 'Arquitectura', '20192311', '2019-06-04', '2019', '5', '10', '6.00', 9, 'LICENCIATURA', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN ARQUITECTURA'),
(18, 113, 231301, 'Psicología', '20192398', '2019-06-11', '2018', '5', '10', '6.00', 10, 'LICENCIATURA', 'MIXTA', 'FEDERAL', 'ESTADO DE MEXICO', 'PRIVADO', 'LICENCIATURA EN PSICOLOGIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_entidad_federativa`
--

CREATE TABLE `cat_entidad_federativa` (
  `IDENTIDAD` int(11) NOT NULL,
  `ID` varchar(2) DEFAULT NULL,
  `ENTIDAD` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_entidad_federativa`
--

INSERT INTO `cat_entidad_federativa` (`IDENTIDAD`, `ID`, `ENTIDAD`) VALUES
(1, '01', 'AGUASCALIENTES'),
(2, '02', 'BAJA CALIFORNIA'),
(3, '03', 'BAJA CALIFORNIA SUR'),
(4, '04', 'CAMPECHE'),
(5, '05', 'COAHUILA DE ZARAGOZA'),
(6, '06', 'COLIMA'),
(7, '07', 'CHIAPAS'),
(8, '08', 'CHIHUAHUA'),
(9, '09', 'CIUDAD DE MÉXICO'),
(10, '10', 'DURANGO'),
(11, '11', 'GUANAJUATO'),
(12, '12', 'GUERRERO'),
(13, '13', 'HIDALGO'),
(14, '14', 'JALISCO'),
(15, '15', 'MÉXICO'),
(16, '16', 'MICHOACAN DE OCAMPO'),
(17, '17', 'MORELOS'),
(18, '18', 'NAYARIT'),
(19, '19', 'NUEVO LEON'),
(20, '20', 'OAXACA'),
(21, '21', 'PUEBLA'),
(22, '22', 'QUERETARO'),
(23, '23', 'QUINTANA ROO'),
(24, '24', 'SAN LUIS POTOSI'),
(25, '25', 'SINALOA'),
(26, '26', 'SONORA'),
(27, '27', 'TABASCO'),
(28, '28', 'TAMAULIPAS'),
(29, '29', 'TLAXCALA'),
(30, '30', 'VERACRUZ DE IGNACIO DE LA LLAVE'),
(31, '31', 'YUCATAN'),
(32, '32', 'ZACATECAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estudio_antecedente`
--

CREATE TABLE `cat_estudio_antecedente` (
  `ID_ESTUDIO` int(11) NOT NULL,
  `TIPO_ESTUDIO_ANTECEDENTE` varchar(45) DEFAULT NULL,
  `TIPO_EDUCATIVO_DEL_ATENCEDENTE` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_estudio_antecedente`
--

INSERT INTO `cat_estudio_antecedente` (`ID_ESTUDIO`, `TIPO_ESTUDIO_ANTECEDENTE`, `TIPO_EDUCATIVO_DEL_ATENCEDENTE`) VALUES
(1, 'MAESTRÍA', 'EDUCACIÓN SUPERIOR'),
(2, 'LICENCIATURA', 'EDUCACIÓN SUPERIOR'),
(3, 'TÉCNICO SUPERIOR UNIVERSITARIO', 'EDUCACIÓN SUPERIOR'),
(4, 'BACHILLERATO', 'EDUCACIÓN MEDIA SUPERIOR'),
(5, 'EQUIVALENTE A BACHILLERATO ', 'EDUCACIÓN MEDIA SUPERIOR'),
(6, 'SECUNDARIA', 'EDUCACIÓN BÁSICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_fundamento_legal`
--

CREATE TABLE `cat_fundamento_legal` (
  `ID_FUNDAMENTO` int(11) NOT NULL,
  `DESCRIPCION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_fundamento_legal`
--

INSERT INTO `cat_fundamento_legal` (`ID_FUNDAMENTO`, `DESCRIPCION`) VALUES
(1, 'ART. 52 LRART. 5 CONST'),
(2, 'ART. 55 LRART. 5 CONST'),
(3, 'ART. 91 RLRART. 5 CONST'),
(4, 'ART. 10 REGLAMENTO PARA LA PRESTACIÓN DEL SERVICIO SOCIAL DE LOS ESTUDIANTES DE LAS INSTITUCIONES DE EDUCACIÓN SUPERIOR EN LA REPÚBLICA MEXICANA '),
(5, 'NO APLICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_genero`
--

CREATE TABLE `cat_genero` (
  `ID` int(11) NOT NULL,
  `ID_GENERO` int(11) NOT NULL,
  `GENERO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_genero`
--

INSERT INTO `cat_genero` (`ID`, `ID_GENERO`, `GENERO`) VALUES
(1, 250, 'MUJER'),
(2, 251, 'HOMBRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_modalidad_titulacion`
--

CREATE TABLE `cat_modalidad_titulacion` (
  `IDMODALIDAD` int(11) NOT NULL,
  `MODALIDAD_TITULACION` varchar(45) DEFAULT NULL,
  `TIPO_MODALIDAD` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_modalidad_titulacion`
--

INSERT INTO `cat_modalidad_titulacion` (`IDMODALIDAD`, `MODALIDAD_TITULACION`, `TIPO_MODALIDAD`) VALUES
(1, 'POR TESIS', 'ACTA DE EXAMEN'),
(2, 'POR PROMEDIO', 'CONSTANCIA DE EXENCIÓN'),
(3, 'POR ESTUDIOS DE POSGRADOS', 'CONSTANCIA DE EXENCIÓN'),
(4, 'POR EXPERIENCIA LABORAL', 'CONSTANCIA DE EXENCIÓN'),
(5, 'POR CENEVAL', 'CONSTANCIA DE EXENCIÓN'),
(6, 'OTRO', 'CONSTANCIA DE EXENCIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_motivos_cancelacion`
--

CREATE TABLE `cat_motivos_cancelacion` (
  `idmotivo` varchar(5) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_motivos_cancelacion`
--

INSERT INTO `cat_motivos_cancelacion` (`idmotivo`, `descripcion`) VALUES
('C1', 'CAUSA IMPUTABLE AL PROFESIONISTA'),
('R1', 'REASIGNACIÓN PARA LA CONCORDANCIA SEXO-GENÉRICA'),
('R2', 'RECONOCIMIENTO DE PATERNIDAD'),
('R3', 'CAMBIO Y MODIFICACIÓN AL NOMBRE'),
('R4', 'CASO FORTUITO O FUERZA MAYOR'),
('R5', 'OTRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_nivel_estudios`
--

CREATE TABLE `cat_nivel_estudios` (
  `ID` int(11) NOT NULL,
  `ID_NIVEL` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_nivel_estudios`
--

INSERT INTO `cat_nivel_estudios` (`ID`, `ID_NIVEL`, `DESCRIPCION`) VALUES
(1, 95, 'DOCTORADO'),
(2, 85, 'ESPECIALIDAD'),
(3, 84, 'TÉCNICO SUPERIOR UNIVERSITARIO'),
(4, 83, 'PROFESIONAL ASOCIADO'),
(5, 82, 'MAESTRÍA'),
(6, 81, 'LICENCIATURA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_observaciones`
--

CREATE TABLE `cat_observaciones` (
  `ID` int(11) NOT NULL,
  `ID_OBSERVACION` varchar(4) DEFAULT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  `DESCRIPCION_CORTA` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_observaciones`
--

INSERT INTO `cat_observaciones` (`ID`, `ID_OBSERVACION`, `DESCRIPCION`, `DESCRIPCION_CORTA`) VALUES
(1, '70', 'EQUIVALENCIA DE ESTUDIOS', 'E'),
(2, '71', 'EXAMEN EXTRAORDINARIO', 'E.E.'),
(3, '72', 'EXAMEN A TITULO DE SUFICIENCIA', 'E.T.S.'),
(4, '73', 'CURSO DE VERANO', 'C.V.'),
(5, '74', 'RECURSAMIENTO', 'Rec.'),
(6, '75', 'REINGRESO', 'Rein.'),
(7, '76', 'ACUERDO REGULARIZACIÓN', 'A.C.'),
(8, '77', 'CON CAMBIO EN EL ACUERDO DE RVOE', 'C.A.'),
(9, '78', 'REVALIDACIÓN DE ESTUDIOS', 'R.'),
(10, '100', 'NORMAL / ORDINARIO', NULL),
(11, '101', 'CORRESPONDENCIA DE ASIGNATURA POR PLAN', 'C.A.P.'),
(12, '102', 'EXENTO', 'EX.'),
(13, '104', 'CURSO DE REGULARIZACIÓN', 'C.R.'),
(14, '105', 'INTERCAMBIO ACADÉMICO', 'I.A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_asignatura`
--

CREATE TABLE `cat_tipo_asignatura` (
  `ID` int(11) NOT NULL,
  `idTipoAsignatura` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_tipo_asignatura`
--

INSERT INTO `cat_tipo_asignatura` (`ID`, `idTipoAsignatura`, `DESCRIPCION`) VALUES
(1, 263, 'OBLIGATORIA'),
(2, 264, 'OPTATIVA'),
(3, 265, '*ADICIONAL'),
(4, 266, '**COMPLEMENTARIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_certificacion`
--

CREATE TABLE `cat_tipo_certificacion` (
  `ID` int(11) NOT NULL,
  `ID_TIPOCERTIFICACION` int(11) NOT NULL,
  `TIPO_CERTIFICACION` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_tipo_certificacion`
--

INSERT INTO `cat_tipo_certificacion` (`ID`, `ID_TIPOCERTIFICACION`, `TIPO_CERTIFICACION`) VALUES
(1, 79, 'TOTAL'),
(2, 80, 'PARCIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_periodo`
--

CREATE TABLE `cat_tipo_periodo` (
  `ID` int(11) NOT NULL,
  `ID_TIPOPERIODO` int(11) DEFAULT NULL,
  `TIPO_PERIODO` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_tipo_periodo`
--

INSERT INTO `cat_tipo_periodo` (`ID`, `ID_TIPOPERIODO`, `TIPO_PERIODO`) VALUES
(1, 91, 'SEMESTRE'),
(2, 92, 'BIMESTRE'),
(3, 93, 'CUATRIMESTRE'),
(4, 94, 'TETRAMESTRE'),
(5, 260, 'TRIMESTRE'),
(6, 261, 'MODULAR'),
(7, 262, 'ANUAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE `instituciones` (
  `ID` int(11) NOT NULL,
  `ID_INSTITUCION` int(11) NOT NULL,
  `DESCRIPCION` varchar(500) NOT NULL,
  `ESTATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idrol`, `role`) VALUES
(2, 'ROLE_ADMINISTRADOR'),
(1, 'ROLE_SISTEMAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tit_antecedente`
--

CREATE TABLE `tit_antecedente` (
  `idantecedente` int(11) NOT NULL,
  `institucionProcedencia` varchar(100) NOT NULL,
  `idTipoEstudioAntecedente` int(11) NOT NULL,
  `tipoEstudioAntecedente` varchar(50) NOT NULL,
  `idEntidadFederativa` varchar(10) NOT NULL,
  `entidadFederativa` varchar(50) NOT NULL,
  `fechaInicio` varchar(50) NOT NULL,
  `fechaTerminacion` varchar(50) NOT NULL,
  `noCedula` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tit_carrera`
--

CREATE TABLE `tit_carrera` (
  `idcarrera` int(11) NOT NULL,
  `cveCarrera` varchar(60) NOT NULL,
  `nombreCarrera` varchar(100) NOT NULL,
  `fechaInicio` varchar(50) NOT NULL,
  `fechaTerminacion` varchar(50) NOT NULL,
  `idAutorizacionReconocimiento` int(11) NOT NULL,
  `autorizacionReconocimiento` varchar(50) NOT NULL,
  `numeroRvoe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tit_expedicion`
--

CREATE TABLE `tit_expedicion` (
  `idexpedicion` int(11) NOT NULL,
  `fechaExpedicion` varchar(50) NOT NULL,
  `idModalidadTitulacion` int(11) NOT NULL,
  `modalidadTitulacion` varchar(50) NOT NULL,
  `fechaExamenProfesional` varchar(50) NOT NULL,
  `fechaExencionExamenProfesional` varchar(50) NOT NULL,
  `cumplioServicioSocial` int(11) NOT NULL,
  `idFundamentoLegalServicioSocial` int(11) NOT NULL,
  `fundamentoLegalServicioSocial` varchar(50) NOT NULL,
  `idEntidadFederativa` varchar(10) NOT NULL,
  `entidadFederativa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tit_firmaresponsable`
--

CREATE TABLE `tit_firmaresponsable` (
  `idfirmaresp` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `primerApellido` varchar(60) NOT NULL,
  `segundoApellido` varchar(60) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `idCargo` int(11) NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `abrTitulo` varchar(60) NOT NULL,
  `sello` varchar(5000) NOT NULL,
  `certificadoResponsable` varchar(5000) NOT NULL,
  `noCertificadoResponsable` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tit_institucion`
--

CREATE TABLE `tit_institucion` (
  `idinstitucio` int(11) NOT NULL,
  `cveInstitucion` varchar(60) NOT NULL,
  `nombreInstitucion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tit_profesionista`
--

CREATE TABLE `tit_profesionista` (
  `idprofesionista` int(11) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `primerApellido` varchar(60) NOT NULL,
  `segundoApellido` varchar(60) NOT NULL,
  `correoElectronico` varchar(100) NOT NULL,
  `folioControl` varchar(50) NOT NULL,
  `version` varchar(5) NOT NULL DEFAULT '1.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`, `id`) VALUES
('sistemas', '$2a$10$83H0UBkzEecrwEPJIEul3eCfWdZBT8pG7GicRk69XcMMu8wqkBD1G', 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD UNIQUE KEY `ix_auth_username` (`username`,`authority`),
  ADD KEY `authority` (`authority`);

--
-- Indices de la tabla `cat_autorizacionreconocimiento`
--
ALTER TABLE `cat_autorizacionreconocimiento`
  ADD PRIMARY KEY (`ID_AUTORIZACION_RECONOCIMIENTO`);

--
-- Indices de la tabla `cat_cargos`
--
ALTER TABLE `cat_cargos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cat_carreras`
--
ALTER TABLE `cat_carreras`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cat_entidad_federativa`
--
ALTER TABLE `cat_entidad_federativa`
  ADD PRIMARY KEY (`IDENTIDAD`);

--
-- Indices de la tabla `cat_estudio_antecedente`
--
ALTER TABLE `cat_estudio_antecedente`
  ADD PRIMARY KEY (`ID_ESTUDIO`);

--
-- Indices de la tabla `cat_fundamento_legal`
--
ALTER TABLE `cat_fundamento_legal`
  ADD PRIMARY KEY (`ID_FUNDAMENTO`);

--
-- Indices de la tabla `cat_genero`
--
ALTER TABLE `cat_genero`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_GENERO_UNIQUE` (`ID_GENERO`);

--
-- Indices de la tabla `cat_modalidad_titulacion`
--
ALTER TABLE `cat_modalidad_titulacion`
  ADD PRIMARY KEY (`IDMODALIDAD`);

--
-- Indices de la tabla `cat_motivos_cancelacion`
--
ALTER TABLE `cat_motivos_cancelacion`
  ADD PRIMARY KEY (`idmotivo`);

--
-- Indices de la tabla `cat_nivel_estudios`
--
ALTER TABLE `cat_nivel_estudios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cat_observaciones`
--
ALTER TABLE `cat_observaciones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cat_tipo_asignatura`
--
ALTER TABLE `cat_tipo_asignatura`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cat_tipo_certificacion`
--
ALTER TABLE `cat_tipo_certificacion`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_TIPOCERTIFICACION_UNIQUE` (`ID_TIPOCERTIFICACION`);

--
-- Indices de la tabla `cat_tipo_periodo`
--
ALTER TABLE `cat_tipo_periodo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idrol`),
  ADD UNIQUE KEY `uniquerol` (`role`);

--
-- Indices de la tabla `tit_antecedente`
--
ALTER TABLE `tit_antecedente`
  ADD PRIMARY KEY (`idantecedente`);

--
-- Indices de la tabla `tit_carrera`
--
ALTER TABLE `tit_carrera`
  ADD PRIMARY KEY (`idcarrera`);

--
-- Indices de la tabla `tit_expedicion`
--
ALTER TABLE `tit_expedicion`
  ADD PRIMARY KEY (`idexpedicion`);

--
-- Indices de la tabla `tit_firmaresponsable`
--
ALTER TABLE `tit_firmaresponsable`
  ADD PRIMARY KEY (`idfirmaresp`);

--
-- Indices de la tabla `tit_institucion`
--
ALTER TABLE `tit_institucion`
  ADD PRIMARY KEY (`idinstitucio`);

--
-- Indices de la tabla `tit_profesionista`
--
ALTER TABLE `tit_profesionista`
  ADD PRIMARY KEY (`idprofesionista`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_autorizacionreconocimiento`
--
ALTER TABLE `cat_autorizacionreconocimiento`
  MODIFY `ID_AUTORIZACION_RECONOCIMIENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cat_cargos`
--
ALTER TABLE `cat_cargos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cat_carreras`
--
ALTER TABLE `cat_carreras`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `cat_entidad_federativa`
--
ALTER TABLE `cat_entidad_federativa`
  MODIFY `IDENTIDAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `cat_estudio_antecedente`
--
ALTER TABLE `cat_estudio_antecedente`
  MODIFY `ID_ESTUDIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cat_fundamento_legal`
--
ALTER TABLE `cat_fundamento_legal`
  MODIFY `ID_FUNDAMENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cat_genero`
--
ALTER TABLE `cat_genero`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cat_modalidad_titulacion`
--
ALTER TABLE `cat_modalidad_titulacion`
  MODIFY `IDMODALIDAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cat_nivel_estudios`
--
ALTER TABLE `cat_nivel_estudios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cat_observaciones`
--
ALTER TABLE `cat_observaciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `cat_tipo_asignatura`
--
ALTER TABLE `cat_tipo_asignatura`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cat_tipo_certificacion`
--
ALTER TABLE `cat_tipo_certificacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cat_tipo_periodo`
--
ALTER TABLE `cat_tipo_periodo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tit_antecedente`
--
ALTER TABLE `tit_antecedente`
  MODIFY `idantecedente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tit_carrera`
--
ALTER TABLE `tit_carrera`
  MODIFY `idcarrera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tit_expedicion`
--
ALTER TABLE `tit_expedicion`
  MODIFY `idexpedicion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tit_firmaresponsable`
--
ALTER TABLE `tit_firmaresponsable`
  MODIFY `idfirmaresp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tit_institucion`
--
ALTER TABLE `tit_institucion`
  MODIFY `idinstitucio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tit_profesionista`
--
ALTER TABLE `tit_profesionista`
  MODIFY `idprofesionista` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`authority`) REFERENCES `roles` (`idrol`),
  ADD CONSTRAINT `fk_authorities_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
