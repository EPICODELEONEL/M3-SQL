-- Select all flights from Italy to another country using a join operation between aeroporto and volo tables
SELECT v.id_volo, v.gg_sett, v.citta_part, v.ora_part, v.citta_arr, v.ora_arr, a.tipoaereo
FROM volo v
INNER JOIN aereo a ON v.tipoaereo = a.tipoaereo
INNER JOIN aeroporto ap ON v.citta_part = ap.citta AND ap.nazione = 'ITALIA'
WHERE ap.nazione <> v.citta_arr;

-- Select all flights departing from a city with more than 3 runways
SELECT v.id_volo, v.gg_sett, v.citta_part, v.ora_part, v.citta_arr, v.ora_arr, a.tipoaereo
FROM volo v
INNER JOIN aereo a ON v.tipoaereo = a.tipoaereo
INNER JOIN aeroporto ap ON v.citta_part = ap.citta AND ap.numpiste > 3;

-- Select the number of passengers and amount of cargo carried by each type of aircraft
SELECT a.tipoaereo, SUM(a.numpassegieri) AS tot_pass, SUM(a.qta_merci) AS tot_cargo
FROM aereo a
GROUP BY a.tipoaereo;

-- Select all flights from Italy to another country and their respective departure and arrival airports
SELECT v.id_volo, v.gg_sett, v.citta_part AS partenza, v.ora_part, v.citta_arr AS arrivo, v.ora_arr, a.tipoaereo, ap.nazione AS part_naz, aa.nazione AS arr_naz
FROM volo v
INNER JOIN aereo a ON v.tipoaereo = a.tipoaereo
INNER JOIN aeroporto ap ON v.citta_part = ap.citta AND ap.nazione = 'ITALIA'
INNER JOIN aeroporto aa ON v.citta_arr = aa.citta;

-- Select the number of flights departing from each city and order the results by the number of flights in descending order
SELECT ap.citta, COUNT(*) AS num_flights
FROM volo v
INNER JOIN aeroporto ap ON v.citta_part = ap.citta
GROUP BY ap.citta
ORDER BY num_flights DESC;
