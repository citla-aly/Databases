/* SELECT nos permite indicar el listado de atributos que se desean obtener de la tabla/relacion especificada en FROM
   FROM especifica la tabla/relacion de donde extraeremos los datos
   WHERE indicar restricciones sobre las tuplas de la tabla/relacion a utilzar

   * permite obtener TODOS los atributos/datos de la tabla/relacion indicada en FROM

   ORDER BY nos ayuda a ordenar las tuplas
   OFF SET indica un numero de tuplas a descartar de nuestro resultado de la consulta
 */

-- Ordenamos las tuplas seleccionadas de la tabla de atleta por su nombre y las limitamos a 10 tuplas
SELECT id_atleta, nombre_atleta, edad_atleta, sexo_atleta, número_telatleta
FROM atleta
ORDER BY nombre_atleta
LIMIT 10;

/*Ordenamos las tuplas de id, nombre, enfermedades y el contacto de emergencia del atleta.
  Descartamos las primeras 5 tuplas y recuperamos las siguientes 5:
 */
SELECT id_atleta, nombre_atleta, enfermedades_atleta, id_contacto_emergencia
FROM atleta
ORDER BY nombre_atleta, enfermedades_atleta, id_contacto_emergencia
OFFSET 5 FETCH NEXT 5 ROWS ONLY;

/* Ordenamos la tabla de empleado por apellido y después por el nombre de manera descendente
   Después descartamos 7 tuplas de nuestra paginación
 */
SELECT *
FROM empleado
ORDER BY apellido_empleado, nombre_empleado DESC
OFFSET 7 ROWS;


