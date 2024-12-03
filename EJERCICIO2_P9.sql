
/*EJERCICIO 2 */
/* CONSULTA 1:  Tabla que nos dice los planes de contratación que han sido contratados al menos 15 veces y el monto que se cobra */
SELECT *
FROM crosstab('SELECT num_clases, tipo_plan, monto_pago
FROM plan_contratacion WHERE tipo_plan = ''GRAY'' OR tipo_plan =''BLACK''
ORDER BY 1','SELECT DISTINCT tipo_plan FROM plan_contratacion ORDER BY 1') as T(num_clases INT, GRAY INT, BLACK INT, WHITE INT, GREEN INT);

/* CONSULTA 2:  Tabla que nos regresa el id para identificar a la persona, su tiempo registrado y el nivel  en el que se clasifica */

SELECT *
FROM crosstab('SELECT id_registro_concurso, nivel_clasificacion, resultado_tiempo
FROM registroconcurso
ORDER BY 1', 'SELECT DISTINCT nivel_clasificacion FROM registroconcurso order by 1') as T(ID int, Avanzado real, Intermedio real, Principiante real);