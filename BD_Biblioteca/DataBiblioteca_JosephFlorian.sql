USE BD_BIB;
INSERT INTO AUTOR (NOMAUT,APEAUT,PAISAUT)
 VALUES
('Miguel de Cervantes','Saavedra','España'),
('William','Faulkner','Estados Unidos'),
('Antoine ','Saint-Exupery','Francia'),
('Nicolas','Maquiavelo','Italia'),
('Henry','Kissinger','Alemania'),
('Kitty','Kelley','Gran Bretaña'),
('Aisin','Gioro Puyi','China'),
('Pérez','Galdós','España');

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
('jOSEPH','Florian','945-871-254','fenix','12345'),
('Jesus','Florian','945-871-253','fenix','365'),
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
