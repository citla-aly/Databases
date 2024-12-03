/*Ejercicio 2
PRIMERA CONSULTA: Persona con la edad más grande y la sucursal a la que pertenece */

SELECT s.id_sucursal,nombre_sucursal, nombre_atleta,edad_atleta
FROM atleta
         JOIN sucursal s on atleta.id_sucursal = s.id_sucursal
WHERE edad_atleta = (SELECT MAX(edad_atleta)
                     FROM (SELECT nombre_sucursal, edad_atleta, COUNT(edad_atleta)
                           FROM atleta
                                    JOIN sucursal s on atleta.id_sucursal = s.id_sucursal
                           GROUP BY nombre_sucursal, edad_atleta) T1);


/*Ejercicio 2
SEGUNDA CONSULTA: El sexo y nombre de la persona más alta de todas las sucursales
 */
SELECT id_atleta, nombre_atleta, sexo_atleta, nombre_sucursal, estatura_atleta
FROM atleta
         JOIN sucursal s on atleta.id_sucursal = s.id_sucursal
WHERE estatura_atleta =
      (SELECT MAX(estatura_atleta)
       FROM (SELECT estatura_atleta, COUNT(estatura_atleta)
             FROM atleta
             GROUP BY estatura_atleta) T1);

/*Ejercicio 3
PRIMERA CONSULTA.
INFORMACIÓN DE PLANES DE CONTRATACI”N QUE S”LO TIENE UN ATLETA
 */

SELECT a.*
FROM plan_contratacion a
INNER JOIN
   (SELECT id_plan_contratacion,
          count(id_plan_contratacion) AS counts
   FROM atleta
   GROUP BY id_plan_contratacion
   HAVING count(id_plan_contratacion)=1) b
ON a.id_plan_contratacion=b.id_plan_contratacion
order by id_plan_contratacion;


/*Ejercicio 3
SEGUNDA CONSULTA.
--NÚMERO DE ATLETAS AVANZADOS QUE TIENEN CIERTO TIPO DE PLAN
 */

SELECT
   c.tipo_plan,
   count(c.tipo_plan) atletas_avanzados
FROM registroconcurso a
INNER JOIN
   (
    SELECT a.id_atleta,
           a.id_registro_concurso,
           b.tipo_plan
    FROM atleta a
    INNER JOIN plan_contratacion b
    ON a.id_plan_contratacion=b.id_plan_contratacion
   ) c
ON a.id_registro_concurso=c.id_registro_concurso
WHERE nivel_clasificacion='Avanzado'
GROUP BY c.tipo_plan;

