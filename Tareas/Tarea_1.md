# Tarea 1

1. Crear un repositorio de Github https://github.com/alvaro-salgado/BDR_MCD

2. Compartir el repositorio en Teams: Repositorio compartido 

3. Describir una base de datos y sus relaciones de manera no estructurada con la que trabajar durante el tetramestre. Agrega el tipo de dato que supones tendrá cada uno de tus atributos.

    La base de datos a utilizar se encuentra disponible en https://www.kaggle.com/datasets/tusharsingh1411/formula1-data-1950-2022/data?select=GrandPrix_fastest-laps_details_1950_to_2022.csv

    Se requiere conocer el equipo de Fórmula 1 con el carro más rápido de la historia. Se tiene información desde 1950 hasta 2022 de los nombres pilotos pertenecientes a cada equipo de la Fórmula 1. Cada equipo está conformado por al menos dos pilotos. Durante la temporada se realiza una serie de grandes premios en distintas ciudades alrededor del mundo, estos premios tienen una fecha, un piloto ganador, el número de vueltas y la duración de la carrera. En cada gran premio se participa por la vuelta más rápida la cual consiste en hacer una vuelta en el menor tiempo posible, el ganador de la vuelta rápida puede ser o no el ganador de la carrera, por lo cual es necesario obtener el tiempo de la vuelta más rapida y el nombre del piloto.

    Tipos de datos que tendrá cada atributo:
    
    + Gran premio *texto*
    + Fecha del gran premio *fecha*
    + Ganador *texto*
    + Vueltas *enteros*
    + Tiempo de la carrera *hora*
    + Nombre del piloto *texto*
    + Tiempo de la vuelta rápida *hora*
    + Ganador de la vuelta rápida *texto*



4. Investigar diferentes SGBD, elegir alguno y describirlo.

    Al investigar los distintos Sistemas Gestores de Base de Datos por sus siglas (SGBD) se decidió utilizar mySQL, ya que en varias fuentes apareció como el más popular<sup>1,2</sup> 

    MySQL es un sistema de gestión de bases de datos relacionales, las bases de datos relacionales almacenan los datos en tablas separadas. Se pueden establecer reglas que rigen las relaciones entre los distintos campos de datos, como uno a uno, uno a muchos, entre otros, de esta manera se puede diseñar una base de datos sólida que evite los datos duplicados, incoherentes o ausentes.

    MySQL es de código abierto, lo que cual permite que cualquier persona pueda descargar y usar MySQL de manera gratuita. Además es confiable, escalable y facil de utilizar.<sup>3</sup> 

    


## Referencias
    [1] “10 popular database management systems (DBMS) [List]”. Stackscale. Accedido el 27 de enero de 2024. [En línea]. Disponible: https://www.stackscale.com/blog/popular-database-management-systems/

    [2] “Los gestores de bases de datos (SGBD) más usados”. Canal Informática y TICS. Accedido el 27 de enero de 2024. [En línea]. Disponible: https://www.inesem.es/revistadigital/informatica-y-tics/los-gestores-de-bases-de-datos-mas-usados/

    [3] “What is MySQL?” Oracle | Cloud Applications and Cloud Platform. Accedido el 27 de enero de 2024. [En línea]. Disponible: https://www.oracle.com/mysql/what-is-mysql/#:~:text=MySQL%20is%20a%20relational%20database%20management%20system,-Databases%20are%20the&amp;text=The%20database%20structure%20is%20organized,offers%20a%20flexible%20programming%20environment.

