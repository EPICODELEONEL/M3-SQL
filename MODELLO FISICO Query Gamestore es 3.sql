/*store*/
CREATE TABLE Store (
  id_store INT PRIMARY KEY,
  indirizzo VARCHAR(255),
  numero_telefono VARCHAR(20)
);

INSERT INTO Store (id_store, indirizzo, numero_telefono)
VALUES
  (10, 'viale marconi 83 Roma', '889'),
  (11, 'vialem appia 96 Roma', '998'),
  (12, 'Via Della Primavera 194  Roma', '331'),
  (13, 'Via Schiavonetti 05 Roma', '223'),
  (14, 'Via Dei Sampieri 92  Roma', '445'),
  (15, 'Via Riano Snc  Roma', '665'),
  (16, 'Via Niccodemi 105  Roma', '776'),
  (17, 'Via Andrea Barbato  Roma', '345');
/*personale*/
CREATE TABLE Personale (
  codice_fiscale VARCHAR(16) PRIMARY KEY,
  nome VARCHAR(50),
  titolo_di_studio VARCHAR(50),
  id_store INT,
  lavoro_storico VARCHAR(10),
  FOREIGN KEY (id_store) REFERENCES Store(id_store)
);

INSERT INTO Personale (codice_fiscale, nome, titolo_di_studio, id_store, lavoro_storico)
VALUES
  ('mnlrr67oxb', 'marco', 'laurea', 10, '2011-2022'),
  ('mnlrr67oxc', 'tom', 'diploma', 11, '2011-2023'),
  ('mnlrr67oxd', 'richard', 'laurea', 12, '2011-2024'),
  ('mnlrr67oxe', 'lexy', 'diploma', 13, '2011-2025'),
  ('mnlrr67oxf', 'anna', 'laurea', 14, '2011-2026'),
  ('mnlrr67oxg', 'shane', 'diploma', 15, '2011-2027'),
  ('mnlrr67oxh', 'reina', 'laurea', 16, '2011-2028'),
  ('mnlrr67oxi', 'max', 'diploma', 17, '2011-2029');
/*Attività dei personali*/ 

CREATE TABLE Attivita_dei_personali (
  id_attivita INT PRIMARY KEY,
  descrizione VARCHAR(50)
);

INSERT INTO Attivita_dei_personali (id_attivita, descrizione)
VALUES
  (1, 'cassiere'),
  (2, 'magaziniere'),
  (3, 'vendita');
/*Settore store*/

CREATE TABLE Settore_store (
  id_settore INT PRIMARY KEY,
  descrizione VARCHAR(50),
  id_attivita INT,
  FOREIGN KEY (id_attivita) REFERENCES Attivita_dei_personali(id_attivita)
);

INSERT INTO Settore_store (id_settore, descrizione, id_attivita)
VALUES
  (18, 'cassiere', 1),
  (19, 'magaziniere', 2),
  (20, 'vendita', 3),
  (21, 'cassiere', 1),
  (22, 'magaziniere', 2),
  (23, 'vendita', 3);
  
  CREATE TABLE videogames (
  id INT PRIMARY KEY,
  titolo VARCHAR(255),
  nome_svillupatore VARCHAR(255),
  anno_distribuzione VARCHAR(255),
  costo_di_acquisto VARCHAR(255),
  genere VARCHAR(255),
  remake VARCHAR(255),
  numero_coppie INT
);
/*video giochi*/
INSERT INTO videogames (id, titolo, nome_svillupatore, anno_distribuzione, costo_di_acquisto, genere, remake, numero_coppie) VALUES 
(8867, 'Demon''s Souls.', 'blue point games', '1999-2002', '59,00 €', 'action', 'DSouls remake', 200),
(8868, 'Dead Space Remake', 'naugty dogg', '1999-2003', '49,00 €', 'adventure', 'DSpace Remake', 400),
(8869, 'The Last of Us Part I', 'ubisoft', '1999-2004', '39,00 €', 'fantasy', 'The Last of Us Part 2 remastered', 600),
(8870, 'Pokemon Diamante Lucente e Perla Splendente', 'valve', '1999-2005', '25,00 €', 'calcio', 'Pokemon Diamante Lucente e Perla Splendente Remastered', 800),
(8871, 'Final Fantasy VII Remake', 'blue point games', '1999-2006', '10,00 €', 'action', 'Final Fantasy VII Remake 2', 1000),
(8872, 'Resident Evil 2 Remake', 'naugty dogg', '1999-2007', '23,00 €', 'drama', 'Resident Evil 2 Remake3', 1200),
(8873, 'The Legend of Zelda Links Awakening', 'ubisoft', '1999-2008', '69,00 €', 'slice of life', 'The Legend of Zelda Links Awakening remastered', 1400),
(8874, 'Crisis Core Final Fantasy VII Reunion', 'valve', '1999-2009', '15,00 €', 'autobiografy', 'Crisis Core Final Fantasy VII Reunion part 2', 800);

