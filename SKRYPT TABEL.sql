CREATE TABLE produkty (
    id_produktu int PRIMARY KEY NOT NULL AUTO_INCREMENT UNIQUE,
    producent int NOT NULL,
    model varchar(255) NOT NULL UNIQUE,
    kategoria varchar(255) NOT NULL,
    cena int NOT NULL
);
 
CREATE TABLE producenci (
    id_producenta int PRIMARY KEY NOT NULL AUTO_INCREMENT UNIQUE,
    nazwa varchar(255) NOT NULL UNIQUE,
    data_powstania DATE NOT NULL,
    kraj varchar(255) NOT NULL
);
 
 
ALTER TABLE produkty
add constraint producenci_fk foreign key (producent) references producenci(id_producenta);
 
INSERT INTO producenci
VALUES (null, "Samsung", '1995-12-1', "Korea Poludniowa"),
(null, "LG", '1991-9-11', "Korea Poludniowa"),
(null, "Amica", '1997-7-24', "Polska");
 
INSERT INTO produkty
VALUES (null, 1, "EP-200", "pralka", 2500),
(null, 1, "EP-200X", "pralka", 2750),
(null, 1, "EP-300", "pralka", 3199),
(null, 1, "EE-1000", "telewizor", 3999),
(null, 1, "EE-2000", "telewizor", 4499),
(null, 1, "EX-550", "kuchenka", 2100),
(null, 1, "EZ-550", "lodówka", 3500),
(null, 2, "S-300", "pralka", 2999),
(null, 2, "S-400", "pralka", 2199),
(null, 2, "X-500", "telewizor", 1999),
(null, 2, "X-600", "telewizor", 2599),
(null, 2, "Z-700", "lodówka", 2200),
(null, 3, "U3000", "pralka", 1550),
(null, 3, "U3001", "pralka", 2400),
(null, 3, "G1000", "kuchenka", 1999),
(null, 3, "L100", "lodówka", 2500),
(null, 3, "L105", "lodówka", 3150);