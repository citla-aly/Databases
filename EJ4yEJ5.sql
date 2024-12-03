/* EJERCICIO 3 */

/* PRIMERA CONSULTA: Obtendremos el ID, nombre, edad del atleta y los datos de su contacto de emergencia.
                     Y obtendremos el total de contactos de emergencia. */
SELECT id_atleta, edad_atleta, nombre_ce as contacto_de_emergencia,numero_telce as telefono_ce,
       count(nombre_ce) OVER () total_contactos_emergencia
FROM atleta JOIN contacto_emergencia ce on ce.id_contacto_emergencia = atleta.id_contacto_emergencia
;

/* SEGUNDA CONSULTA:  Obtendremos el ID y nombre del atleta, así como el tipo de plan y el monto que paga
                     Y obtendremos la suma de todos los montos que se han pagado. */
SELECT id_atleta, nombre_atleta, tipo_plan, monto_pago, SUM(monto_pago) OVER () total_global_pagado
FROM atleta JOIN plan_contratacion pc on pc.id_plan_contratacion = atleta.id_plan_contratacion
;

/* Ejercicio 4 */

SELECT id_plan_contratacion, monto_pago, tipo_plan, fecha_inicio,
		ROW_NUMBER () OVER (PARTITION BY tipo_plan ORDER BY fecha_inicio) as orden_tipo,
		AVG (monto_pago) OVER (PARTITION BY tipo_plan)
FROM plan_contratacion
;

SELECT id_sucursal, horario_empleado, id_empleado,
		ROW_NUMBER () OVER (PARTITION BY id_sucursal ORDER BY id_empleado) as orden_empleado,
		AVG (horario_empleado) OVER (PARTITION BY id_sucursal)
FROM empleado
;
/* Ejercicio 5 */

SELECT id_plan_contratacion, monto_pago, tipo_plan, fecha_inicio,
		sum(monto_pago) OVER (ORDER BY id_plan_contratacion ASC)
FROM plan_contratacion
;

SELECT id_sucursal, horario_empleado, id_empleado,
		AVG (horario_empleado) OVER (ORDER BY id_sucursal)
FROM empleado
;