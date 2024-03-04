# Tarea 6


### Conteo de frecuencias o media 

Calcular cuantas veces Sergio Pérez ha obtenido la vuelta rápida.
``` 
SELECT COUNT(*)  FROM vueltas_rapidas
WHERE piloto LIKE 'Sergio Perez%';
```
`COUNT(*)|
--------+
       9|`

Calcular el promedio de vueltas de todos los Gran Premios
```
SELECT AVG(vueltas) AS Promedio_de_Vueltas FROM gran_premios;
```
`Promedio_de_Vueltas|`<br>
`-------------------+`<br>
`            65.0773|`

### Mínimos o máximos

Calcular el Gran Premio con el menor numero de vueltas
``` 
SELECT * FROM gran_premios
ORDER BY vueltas ASC
LIMIT 1
```

`id  |gp     |fecha      |piloto_ganador    |equipo_ganador       |vueltas|duracion|anio|`<br>
`----+-------+-----------+------------------+---------------------+-------+--------+----+`<br>
`1067|Belgium|29 Aug 2021|Max Verstappen VER|Red Bull Racing Honda|      1|03:27:00|2021|`



### Moda
Calcular el piloto con mas vueltas rápidas

```
SELECT piloto, count(piloto) AS moda FROM vueltas_rapidas 
GROUP BY piloto
ORDER BY count(piloto) DESC 
LIMIT 1
```

`piloto                |moda|`<br>
`----------------------+----+`<br>
`Michael Schumacher MSC|  76|`

