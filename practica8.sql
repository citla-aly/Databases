/*Ejercicio 1*/
SELECT Nombre_Atleta, Peso, IMC, Porcentaje_Grasa, Porcentaje_Musculo
FROM Atleta
         NATURAL JOIN Ficha_Parametros
WHERE IMC > 30
   OR Peso > 85
;


SELECT *
FROM WOD
         INNER JOIN Atleta
                    ON WOD.ID_WOD = Atleta.ID_WOD
WHERE Registro_Tiempo
          BETWEEN 30   AND 60
;


SELECT *
FROM Atleta
         LEFT JOIN Contacto_Emergencia
                   ON Atleta.ID_Contacto_Emergencia = Contacto_Emergencia.ID_Contacto_Emergencia
WHERE Numero_TelCE LIKE '__9%'
  AND Edad_Atleta > 25

;


SELECT *
FROM DOMICILIO
         RIGHT JOIN EMPLEADO
                    ON Domicilio.ID_Domicilio = Empleado.ID_Domicilio
WHERE Nombre_empleado   LIKE 'A%'
   OR Apellido_empleado   NOT IN ('González', 'Trejo', 'Abanero')
;


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
/*SEGUNDA CONSULTA: El sexo y nombre de la persona más alta de todas las sucursales
 */
SELECT id_atleta, nombre_atleta, sexo_atleta, nombre_sucursal, estatura_atleta
FROM atleta
         JOIN sucursal s on atleta.id_sucursal = s.id_sucursal
WHERE estatura_atleta =
      (SELECT MAX(estatura_atleta)
       FROM (SELECT estatura_atleta, COUNT(estatura_atleta)
             FROM atleta
             GROUP BY estatura_atleta) T1);

/*TERCERA CONSULTA: Calculamos la media de las edades de los atletas
 */
SELECT AVG(edad_atleta)
FROM atleta;

/* CUARTA Y QUINTA CONSULTA : Queremos saber cuales son los atletas avanzados y cuantos son */
SELECT id_atleta, nombre_atleta, nivel_clasificacion
FROM atleta
         JOIN registroconcurso s on atleta.id_registro_concurso = s.id_registro_concurso
WHERE nivel_clasificacion =  'Avanzado';
SELECT COUNT( case when nivel_clasificacion = 'Avanzado' then 1 end) AS avanzados_totales
FROM registroconcurso;

/* SEXTA CONSULTA: Persona que carga el mayor peso y su índice de masa corporal*/
SELECT imc,porcentaje_grasa, nombre_atleta,edad_atleta
FROM atleta
         JOIN ficha_parametros s on atleta.id_ficha_parametros = s.id_ficha_parametros
WHERE porcentaje_grasa = (SELECT MAX(porcentaje_grasa)
                          FROM (SELECT  imc,porcentaje_grasa, COUNT(porcentaje_grasa)
                                FROM atleta
                                         JOIN ficha_parametros s on atleta.id_ficha_parametros = s.id_ficha_parametros
                                GROUP BY imc,  porcentaje_grasa) T1);

/*Ejercicio 3
PRIMERA CONSULTA.
INFORMACIÓN DE PLANES DE CONTRATACIÓN QUE SÓLO TIENE UN ATLETA
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

