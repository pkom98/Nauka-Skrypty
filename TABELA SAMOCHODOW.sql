CREATE TABLE samochody (
id_samochodu int PRIMARY KEY NOT NULL AUTO_INCREMENT UNIQUE,
producent int NOT NULL,
model varchar(100) NOT NULL,
typ_paliwa varchar(100) NOT NULL,
rok_produkcji DATE NOT NULL,
pojemność_skokowa_cm3 int NOT NULL,
przebieg_km int NOT NULL,
kolor varchar(100) NOT NULL,
cena int NOT NULL,
);

CREATE TABLE producenci (
id_producenta int PRIMARY KEY NOT NULL AUTO_INCREMENT UNIQUE,
marka varchar(100) NOT NULL,
kraj_produkcji varchar(100) NOT NULL,
);

ALTER TABLE samochody
add constraint producenci_fk foreign key (producent) references producenci(id_producenta);

INSERT INTO producenci
VALUES
(NULL, "BMW", "Niemcy"),
(NULL, "Volkswagen", "Niemcy"),
(NULL, "Honda", "Japonia"),
(NULL, "Nissan", "Japonia"),
(NULL, "Ford", "Ameryka"),
(NULL, "Audi", "Niemcy"),
(NULL, "Citroen", "Francja"),
(NULL, "Mercedes-Benz", "Niemcy"),
(NULL, "Fiat", "Włochy"),
(NULL, "Hyundai", "Korea Południowa"),
(NULL, "Kia", "Korea Południowa"),
(NULL, "Opel", "Niemcy"),
(NULL, "Peugeot", "Francja"),
(NULL, "Renault", "Francja"),
(NULL, "Seat", "Niemcy"),
(NULL, "Skoda", "Niemcy"),
(NULL, "Toyota", "Japonia"),
(NULL, "Volvo", "Chiny")
;

INSERT INTO samochody
VALUES
(NULL, 1, "330xi", "Benzyna", 2005-12-28, 2996, 221450, "Grafit", 23999),
(NULL, 2, "Polo", "Benzyna", 2006-03-15, 1398, 189657, "Czarny", 7999),
(NULL, 3, "Accord", "Diesel", 2010-12-25, 2195, 324977, "Grafit", 27999),
(NULL, 4, "GT-R", "Benzyna", 2019-07-18, 3788, 49865, "Niebieski", 349999),
(NULL, 5, "Mustang", "Benzyna", 2009-08-10, 4998, 298543, "Zielony", 43999),
(NULL, 6, "A5", "Diesel", 2005-12-28, 1997, 220000, "Grafit", 23999),
(NULL, 7, "C4", 2002-06-01, 1596, 266444, "Srebrny", 9999),
(NULL, 8, "S500", 2022-03-09, 4999, 10532, "Czarny", 495999),

