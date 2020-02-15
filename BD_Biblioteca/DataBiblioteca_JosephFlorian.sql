USE BD_BIB;
INSERT INTO PAIS(NOMPAIS)
VALUES
('España'),
('Colombia'),
('México'),
('Estados Unidos'),
('Venezuela'),
('Italia'),
('Francia'),
('Portugal');

INSERT INTO AUTOR (NOMAUT,APEAUT,IDPAIS)
 VALUES
('Miguel de Cervantes','Saavedra','1'),
('William','Faulkner','2'),
('Antoine ','Saint-Exupery','3'),
('Nicolas','Maquiavelo','4'),
('Henry','Kissinger','5'),
('Kitty','Kelley','6'),
('Aisin','Gioro Puyi','7'),
('Pérez','Galdós','8');

INSERT INTO EDITORIAL(NOMEDI)
VALUES
('Anaya'),
('Alfaguara'),
('Andina'),
('S.M.'),
('Plaza&Janés'),
('Caralt');

INSERT INTO ADMINISTRADOR(NOMADM,APEADM,NOMUSUADM,CONADM)
VALUES
('Joseph','Florian','Fenix','12345'),
('Jesus','Florian','Fenni','365');

INSERT INTO LECTOR(NOMLEC,APELEC,TELLEC,NOMUSULEC,PASLEC)
VALUES
('Jean','Florian','945-871-254','Messi','4578'),
('Yisus','Florian','945-871-253','Lector','5412'),
('JENNIFER','DAVIS','945-871-252','fenix','111213'),
('JOHNNY','LOLLOBRIGIDA','945-871-251','fenix','141516'),
('BETTE','NICHOLSON','945-871-250','fenix','171819');

INSERT INTO LIBRO(TITLIB,IDEDI,IDAUT)
VALUES 
('Don Quijote de La Mancha I','1','1'),
('Don Quijote de La Mancha II','1','1'),
('Historias de Nueva Orleans','2','2'),
('El principito','3','3'),
('El príncipe','4','4'),
('Diplomacia','4','5'),
('Los Windsor','5','6'),
('El Último Emperador','6','7'),
('Fortunata y Jacinta','5','8');

INSERT INTO PRESTAMO(FECHPRE,IDLEC)
VALUES
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'1'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'2'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'3'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'4'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'5');

INSERT INTO DETALLEPRESTAMO(FECSALDET,FECENTDET,CANDET,IDPRE,IDLIB) 
VALUES
('12/1/2020    13:10','19/1/2020    15:10','1','1','1'),
('12/1/2020    14:10','19/1/2020    16:10','1','2','2'),
('12/1/2020    15:10','19/1/2020    17:10','1','3','3'),
('12/1/2020    16:10','19/1/2020    18:10','1','4','4'),
('12/1/2020    17:10','19/1/2020    19:10','1','5','5');

/*DESHABILITAR MODO SEGURO
 (SET SQL_SAFE_UPDATES = 0;)
*/

/*RESTRICCION CONSTRAINT DESABILITADA*/
ALTER TABLE LIBRO DROP FOREIGN KEY LIBRO_AUTOR;
ALTER TABLE LIBRO DROP FOREIGN KEY LIBRO_EDITORIAL











