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

INSERT INTO PRESTAMO(FECHPRE,IDLEC,IDLIB)
VALUES
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'1','1'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'2','2'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'3','3'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'4','4'),
(STR_TO_DATE('12/1/2020', '%d/%m/%Y'),'5','5');



/*DESHABILITAR MODO SEGURO
 (SET SQL_SAFE_UPDATES = 0;)
*/

/*RESTRICCION CONSTRAINT DESABILITADA*/
ALTER TABLE LIBRO DROP FOREIGN KEY LIBRO_AUTOR;
ALTER TABLE LIBRO DROP FOREIGN KEY LIBRO_EDITORIAL;
ALTER TABLE AUTOR DROP FOREIGN KEY AUTOR_PAIS;









/*
SELECT D.IDDEV, P.IDPRE,P.FECHPRE, R.IDLEC, R.NOMLEC, R.APELEC, R.TELLEC, R.NOMUSULEC, R.PASLEC, L.IDLIB, L.TITLIB, E.IDEDI, E.NOMEDI, A.IDAUT, A.NOMAUT, A.APEAUT, I.IDPAIS, I.NOMPAIS   FROM DEVOLUCION D INNER JOIN PRESTAMO P ON (D.IDPRE = P.IDPRE) INNER JOIN LIBRO L ON (D.IDLIB = L.IDLIB) INNER JOIN LECTOR R ON (D.IDLEC = R.IDLEC) INNER JOIN EDITORIAL E ON (L.IDEDI = E.IDEDI) INNER JOIN AUTOR A ON (L.IDAUT = A.IDAUT) INNER JOIN PAIS I ON (A.IDPAIS = I.IDPAIS) 
SELECT L.IDLIB, L.TITLIB, E.IDEDI, E.NOMEDI, A.IDAUT, A.NOMAUT, A.APEAUT, P.IDPAIS, P.NOMPAIS 
FROM 
LIBRO L 
INNER JOIN EDITORIAL E 
ON (L.IDEDI = E.IDEDI) 
INNER JOIN AUTOR A 
ON (L.IDAUT = A.IDAUT)
INNER JOIN PAIS P 
ON (A.IDPAIS = P.IDPAIS);

SELECT L.IDLIB, L.TITLIB, E.IDEDI, E.NOMEDI, A.IDAUT, A.NOMAUT, A.APEAUT, P.IDPAIS, P.NOMPAIS FROM LIBRO L JOIN EDITORIAL E ON (L.IDEDI = E.IDEDI) JOIN AUTOR A ON (L.IDAUT = A.IDAUT) JOIN PAIS P ON (A.IDPAIS = P.IDPAIS) ORDER BY L.TITLIB;
SELECT L.IDLIB, L.TITLIB, E.IDEDI, E.NOMEDI, A.IDAUT, A.NOMAUT, A.APEAUT, P.IDPAIS, P.NOMPAIS FROM LIBRO L, EDITORIAL E, AUTOR A, PAIS P WHERE L.IDEDI = E.IDEDI AND L.IDAUT = A.IDAUT AND A.IDPAIS = P.IDPAIS ORDER BY L.TITLIB;

SELECT F.IDPRE, F.FECHPRE,
 L.IDLEC, L.NOMLEC,
 L.APELEC, L.TELLEC, L.NOMUSULEC, L.PASLEC ,
 O.IDLIB, O.TITLIB,
 E.IDEDI, E.NOMEDI,
 A.IDAUT, A.NOMAUT,A.APEAUT, 
 P.IDPAIS, P.NOMPAIS
 FROM PRESTAMO F 
 INNER JOIN LECTOR L 
 ON (F.IDLEC = L.IDLEC) 
 INNER JOIN LIBRO O
 ON (F.IDLIB = O.IDLIB)
 INNER JOIN EDITORIAL E
 ON (O.IDEDI = E.IDEDI)
INNER JOIN AUTOR A 
ON(O.IDAUT=A.IDAUT)
INNER JOIN PAIS P
ON (A.IDPAIS = P.IDPAIS)
**/



