# Tarea 9

### Función que calcula el coeficiente de la correlación de Pearson

Se define el coeficiente de correlación muestral de Pearson como


$$ r_{xy} = \frac{\sum_{i=1}^{n}(x_{i} - \bar{x})(y_{i} - \bar{y})}{\sqrt{\sum_{i=1}^{n}(x_{i} - \bar{x})^2} \sqrt{\sum_{i=1}^{n}(y_{i} - \bar{y})^2}} $$

Por lo tanto la función en SQL que realiza el cálculo del coeficiente de correlación de los puntos obtenidos por un piloto y la posición en la que terminó la temporada queda de la siguiente manera

```
DELIMITER $$

CREATE FUNCTION correlacion_pearson()
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE correlacion FLOAT;

    -- Calculamos la correlación de Pearson
    SELECT
        ((COUNT(*) * SUM(puntos * posicion)) - (SUM(puntos) * SUM(posicion))) / 
        (SQRT((COUNT(*) * SUM(puntos * puntos)) - POW(SUM(puntos), 2)) * 
         SQRT((COUNT(*) * SUM(posicion * posicion)) - POW(SUM(posicion), 2)))
    INTO correlacion
    FROM pilotos;

    RETURN correlacion;
END$$

DELIMITER ;
```

Al llamar la función

```
SELECT correlacion_pearson() AS correlacion;
```

Tenemos como resultado

`correlacion|`<br>
`-----------+`<br>
`   -0.51601|`<br>

Lo cual indica que la relación entre estas variables es inversa, esto tiene sentido ya que para que un piloto quede en primer lugar es necesario que acumule la máxima cantidad de puntos, el segundo lugar tendrá menos puntos que el primero y asi sucesivamente. La relación no es muy alta debido a que algunos pilotos no acumulan puntos durante la temporada, por lo que pueden existir pilotos con 0 puntos, sin embargo la posición sigue incrementando.