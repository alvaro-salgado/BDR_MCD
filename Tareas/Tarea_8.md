# Tarea 8

### Crear vistas sobre consultas significativas


#### Vista de la cantidad de vueltas rápidas realizadas por cada piloto

```
CREATE VIEW vista_vueltas_rapidas AS
SELECT p.nombre as Nombre, COUNT(vr.id) AS cantidad_vueltas_rapidas
FROM pilotos p
LEFT JOIN vueltas_rapidas vr ON p.nombre = vr.piloto
GROUP BY p.nombre
ORDER BY cantidad_vueltas_rapidas DESC;
```
Se muestra la cantidad de vueltas rápidas conseguidas por cada piloto y se ordenan de mayor a menor, por lo tanto
se puede apreciar qué piloto es el que tiene más vueltas rápidas

Aquí una muestra de la tabla generada por la vista
<br>
`Nombre                      |cantidad_vueltas_rapidas|` <br>
`----------------------------+------------------------+`<br>
`Michael Schumacher MSC      |                    1368|`<br>
`Lewis Hamilton HAM          |                     976|`<br>
`Sebastian Vettel VET        |                     608|`<br>
`Alain Prost PRO             |                     533|`<br>
`Fernando Alonso ALO         |                     414|`<br>

#### Vista de los ganadores mexicanos
```
CREATE VIEW ganadores_mexicanos AS
SELECT g_p.gp as Gran_Premio, p.nombre AS nombre_piloto
FROM gran_premios g_p
JOIN pilotos p ON g_p.piloto_ganador = p.nombre
WHERE p.nacionalidad  LIKE '%MEX';
```
Se muestran los nombres de los pilotos mexicanos y el nombre del Gran Premio que ganaron 

Aquí una muestra de la tabla generada por la vista
<br>
`Gran_Premio |nombre_piloto      |`<br>
`------------+-------------------+`<br>
`South Africa|Pedro Rodriguez ROD|`<br>
`South Africa|Pedro Rodriguez ROD|`<br>
`South Africa|Pedro Rodriguez ROD|`<br>
`South Africa|Pedro Rodriguez ROD|`<br>
`South Africa|Pedro Rodriguez ROD|`<br>

#### Vista de los países más ganadores
```
CREATE VIEW paises_mas_ganadores AS
SELECT p.nacionalidad as pais, COUNT(gp.piloto_ganador) AS cantidad_victorias
FROM pilotos p
LEFT JOIN gran_premios gp ON p.nombre = gp.piloto_ganador
GROUP BY p.nacionalidad
ORDER BY cantidad_victorias DESC;
```
Se muestra los países con la cantidad de Gran Premios ganados.

Aquí una muestra de la tabla generada por la vista
<br>
`pais|cantidad_victorias|`<br>
`----+------------------+`<br>
`GBR |              3756|`<br>
`GER |              2848|`<br>
`BRA |              1289|`<br>
`FRA |               918|`<br>
`ESP |               584|`<br>