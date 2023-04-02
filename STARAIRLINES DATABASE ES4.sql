CREATE TABLE aeroporto (
    citta VARCHAR(50),
    nazione VARCHAR(50),
    numpiste INT
);
INSERT INTO aeroporto (citta, nazione, numpiste)
VALUES
    ('ROMA', 'ITALIA', NULL),
    ('BARCELONA', 'SPAGNA', 3),
    ('BERLINO', 'GERMANIA', 4),
    ('BOLOGNA', 'ITALIA', 5),
    ('FIRENZE', 'ITALIA', 2),
    ('PYONGYANG', 'NORD COREA', 8),
    ('SEUL', 'SUD KOREA', 6),
    ('CEBU', 'FILIPPINE', 7),
    ('TORINO', 'ITALIA', NULL),
    ('BARI', 'ITALIA', 1);
CREATE TABLE volo (
    id_volo VARCHAR(10),
    gg_sett VARCHAR(10),
    citta_partenza VARCHAR(50),
    ora_partenza TIME,
    citta_arrivo VARCHAR(50),
    ora_arrivo TIME,
    tipoaereo VARCHAR(50)
);
INSERT INTO volo (id_volo, gg_sett, citta_partenza, ora_partenza, citta_arrivo, ora_arrivo, tipoaereo)
VALUES
    ('AZ274', 'GIOVEDI', 'ROMA', '09:45:00', 'BOLOGNA', '12:30', 'Boeing 737'),
    ('AZ264', 'SABATO', 'BARCELONA', '10:30:00', 'ALGERIA', '18:40', 'Airbus A320'),
    ('AZ254', 'LUNEDI', 'BERLINO', '05:20:00', 'ALBANIA', '10:30', 'McDonnell Douglas DC-9'),
    ('AZ244', 'MERCOLEDI', 'BOLOGNA', '06:18:00', 'BOSNIA', '12:20', 'Airbus A300/A330/A340'),
    ('AZ234', 'MERCOLEDI', 'FIRENZE', '01:05:00', 'ELBA', '11:45', 'Boeing 777'),
    ('AZ224', 'MARTEDI', 'PYONGYANG', '06:45:00', 'ENNA', '18:30', 'Boeing 727'),
    ('AZ214', 'VENERDI', 'SEUL', '07:20:00', 'BRESCIA', '21:40', 'Boeing 747'),
    ('AZ204', 'VENERDI', 'CEBU', '08:15:00', 'CANBERRA', '14:45', 'Boeing 787'),
    ('AZ194', 'DOMENICA', 'TORINO', '08:45:00', 'TEHERANIA', '14:30', 'Boeing 737'),
    ('AZ184', 'DOMENICA', 'BARI', '09:20:00', 'PANDORA', '17:50', 'Airbus A320');
CREATE TABLE aereo (
  tipoaereo VARCHAR(50),
  numpassegieri INT,
  qta_merci INT
);

INSERT INTO aereo (tipoaereo, numpassegieri, qta_merci)
VALUES 
  ('Boeing 737', 114, 285),
  ('Airbus A320', 144, 322),
  ('McDonnell Douglas DC-9', 200, 245),
  ('Airbus A300/A330/A340', 137, 211),
  ('Boeing 777', 188, 289),
  ('Boeing 727', 190, 333),
  ('Boeing 747', 145, 222),
  ('Boeing 787', 113, 144),
  ('Boeing 737', 365, 233),
  ('Airbus A320', 54, 89);
