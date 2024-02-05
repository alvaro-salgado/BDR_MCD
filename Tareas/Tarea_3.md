# Tarea 3

Crea un esquema del modelo relacional de tu base de datos a partir del modelo e-r de la tarea anterior.

Vuelta Rápida(**Piloto**, Equipo, Duración, Año, Nombre GP)

Piloto(**Nombre**, Nacionalidad, Equipo, Puntos, Año, Posición)

Gran Premio(**Nombre GP**, Duración, Año, Equipo Ganador, Vueltas, Fecha, Piloto Ganador)

Representa un diagrama relacional tu esquema del punto anterior.

<img src="Diagrama relacional F1drawio.svg">

Enuentra cuatro operaciones que vayas a usar en tu base de datos y expésalas mediante operaciones de álgebra relacional. Explica con tus palabras cada una de estas operaciones.

1. Proyecta el nombres de los equipos, seleccionado las filas del nombre de los equipos de la tabla piloto

Π<sub>Equipore</sub>(Piloto)

2. Selecciona el piloto ganador del GP de México de la tabla Gran Premiom primero es necesario seleccionar el Gan Premio de México y después se proyecta el piloto ganador

σ<sub>Nombre GP = Mexico </sub>(Gran Premio) Π<sub>Piloto Ganador</sub>(Gran Premio)

3. Se selecionan los pilotos mexicanos de la tabla Piloto

σ<sub>Nacionalidad = MEX </sub>(Piloto)

4. Se seleccionan los Pilotos campeones, es decir, todos los pilotos que tengan 1 (1ero) en el atributo posición de la tabla piloto.

σ<sub>Posicion = 1 </sub>(Piloto)
