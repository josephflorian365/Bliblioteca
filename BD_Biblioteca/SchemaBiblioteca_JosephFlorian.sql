CREATE DATABASE BD_BIB;

USE BD_BIB;

-- tables
-- Table: AUTOR
CREATE TABLE AUTOR (
    IDAUT int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de cada autor',
    NOMAUT varchar(200) NULL COMMENT 'Contiene el nombre de cada autor',
    APEAUT varchar(200) NULL COMMENT 'Contiene el apellido de cada autor',
    IDPAIS int NOT NULL COMMENT 'Contiene el identificador de cada pais',
    CONSTRAINT AUTOR_pk PRIMARY KEY (IDAUT)
) COMMENT 'Contiene los datos del autor';

-- Table: DETALLE_PRESTAMO
CREATE TABLE DEVOLUCION (
    IDDEV int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de cada detalle del préstamos',
    FECHPREDEV varchar(50) NOT NULL COMMENT 'Contiene la fecha en que el libro es prestado',
    FECHDEVDEV date NOT NULL COMMENT 'Contiene la fecha en que el libro es devuelto',
    LIBDEV varchar(50) NOT NULL COMMENT 'Contiene el titulo del libro que es devuelto',
    LECDEV varchar(50) NOT NULL COMMENT 'Contiene el nombre del lector que devuelve el libro',
    CONSTRAINT DEVOLUCION_pk PRIMARY KEY (IDDEV)
) COMMENT 'Contiene las dependencias totales';

-- Table: EDITORIAL
CREATE TABLE EDITORIAL (
    IDEDI int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de cada editorial',
    NOMEDI varchar(200) NULL COMMENT 'Contiene el nombre de cada editorial',
    CONSTRAINT EDITORIAL_pk PRIMARY KEY (IDEDI)
) COMMENT 'Contiene datos de la editorial';

-- Table: LECTOR
CREATE TABLE LECTOR (
    IDLEC int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de cada usuario',
    NOMLEC varchar(100) NULL COMMENT 'Contiene el nombre de cada lector',
    APELEC varchar(200) NULL COMMENT 'Contiene el apellido de cada lector',
    TELLEC varchar(200) NULL COMMENT 'Contiene el teléfono de cada lector',
    NOMUSULEC varchar(200) NULL COMMENT 'Contiene el nombre con el cual accederá al sistema',
    PASLEC varchar(20) NULL COMMENT 'Contiene la contraseña con el cual accederá al sistema',
    CONSTRAINT LECTOR_pk PRIMARY KEY (IDLEC)
) COMMENT 'Contiene los datos del lector';

-- Table: LIBRO

CREATE TABLE LIBRO (
    IDLIB int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador del libro',
    TITLIB varchar(200) NULL COMMENT 'Contiene el titulo del libro',
    IDEDI int NULL COMMENT 'Contiene el  identificador de cada editorial',
    IDAUT int NULL COMMENT 'Contiene el identificador del autor',
    CONSTRAINT LIBRO_pk PRIMARY KEY (IDLIB)
) COMMENT 'Contiene las propiedades del libro';

-- Table: PRESTAMO
CREATE TABLE PRESTAMO (
    IDPRE int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de cada préstamo',
    FECHPRE date NOT NULL COMMENT 'Contiene la fecha actual del prestamo',
    IDLEC int NOT NULL COMMENT 'Identificador del lector',
    IDLIB int NOT NULL COMMENT 'Identificador del Libro',
    CONSTRAINT PRESTAMO_pk PRIMARY KEY (IDPRE)
) COMMENT 'Contiene el stock con la salida y entrega de cada libro';

-- Table: PERFIL
CREATE TABLE ADMINISTRADOR(
	IDADM int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de cada administrador',
	NOMADM varchar(50) NOT NULL COMMENT 'Contiene los nombres del administrador',
    APEADM varchar(50) NOT NULL COMMENT 'Contiene los apellidos del administrador',
    NOMUSUADM varchar(100) NOT NULL COMMENT 'Contiene los nombre de usuario de cada administrador',
    CONADM varchar(100) NOT NULL COMMENT 'Contiene las contraseñas de cada administrador',
	CONSTRAINT ADMINISTRADOR_pk PRIMARY KEY (IDADM)
)COMMENT 'Contiene el perfil al que pertene ya sea usuario o administrador';

CREATE TABLE PAIS(
	IDPAIS int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de cada pais',
    NOMPAIS varchar(50) NOT NULL COMMENT 'Contiene el nombre del pais',
    CONSTRAINT PAIS_pk PRIMARY KEY (IDPAIS)
)COMMENT 'Tabla para agregar paises';

-- Reference: LIBRO_AUTOR (table: LIBRO)
ALTER TABLE LIBRO ADD CONSTRAINT LIBRO_AUTOR FOREIGN KEY LIBRO_AUTOR (IDAUT)
    REFERENCES AUTOR (IDAUT);

-- Reference: LIBRO_EDITORIAL (table: LIBRO)
ALTER TABLE LIBRO ADD CONSTRAINT LIBRO_EDITORIAL FOREIGN KEY LIBRO_EDITORIAL (IDEDI)
    REFERENCES EDITORIAL (IDEDI);

-- Reference: PRESTAMO_LECTOR (table: PRESTAMO)
ALTER TABLE PRESTAMO ADD CONSTRAINT PRESTAMO_LECTOR FOREIGN KEY PRESTAMO_LECTOR (IDLEC)
    REFERENCES LECTOR (IDLEC);
    
ALTER TABLE PRESTAMO ADD CONSTRAINT PRESTAMO_LIBRO FOREIGN KEY PRESTAMO_LIBRO (IDLIB)
    REFERENCES LIBRO (IDLIB);
 
ALTER TABLE AUTOR ADD CONSTRAINT AUTOR_PAIS FOREIGN KEY AUTOR_PAIS (IDPAIS)
	REFERENCES PAIS(IDPAIS);
-- End of file.
/* Mostrar los foreign keys (show create table LIBRO)
