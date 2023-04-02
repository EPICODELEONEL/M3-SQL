-- Query 1
select NomeCantante
from CANTANTE join ESECUZIONE on CANTANTE.CodiceReg=ESECUZIONE.CodiceReg
join AUTORE on ESECUZIONE.TitoloCanz=AUTORE.TitoloCanzone
where Nome=NomeCantante and Nome like ‘d%’

-- Query 2
select TitoloAlbum
from DISCO join CONTIENE on DISCO.NroSerie=CONTIENE.NroSerieDisco
join ESECUZIONE on CONTIENE.CodiceReg=ESECUZIONE.CodiceReg
where ESECUZIONE.anno is NULL

-- Query 3
select NomeCantante
from Cantante 
where NomeCantante not in ( select S1.NomeCantante
       from Cantante as S1 join Esecuzione as e on e.CodiceReg=S1.CodiceReg
            join Cantante as S2 on e.CodiceReg=S2.CodiceReg where S1.NomeCantante <> S2.NomeCantante);
