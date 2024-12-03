/* TABLA CONTACTO DE EMERGENCIA */

UPDATE Contacto_Emergencia
SET Nombre_CE = 'Martin'
WHERE ID_Contacto_Emergencia = 12;

UPDATE Contacto_Emergencia
SET Nombre_CE = 'Roberto'
WHERE ID_Contacto_Emergencia = 14;

/* TABLA WOD */

UPDATE WOD
SET Lugar_Disponible = 'DISPONIBLE'
WHERE ID_WOD = 9;

UPDATE WOD
SET Lugar_Disponible = 'OCUPADO'
WHERE ID_WOD = 13;

/* TABLA REGISTROCONCURSO */

UPDATE RegistroConcurso
SET Resultado_Peso = 75.6
WHERE ID_Registro_Concurso = 1;

UPDATE RegistroConcurso
SET Resultado_Peso = 67.8
WHERE ID_Registro_Concurso = 5;

/* TABLA FICHA_PARAMETROS */

UPDATE Ficha_parametros
SET IMC = 28
WHERE ID_Ficha_parametros = 2;

UPDATE Ficha_parametros
SET IMC = 23
WHERE ID_Ficha_parametros = 3;

/* TABLA DOMICILIO */

UPDATE Domicilio
SET NumExt = 26
WHERE ID_Domicilio = 9;

UPDATE Domicilio
SET Colonia = 'Balbuena'
WHERE ID_Domicilio = 10;

/* TABLA SUCURSAL */

UPDATE Sucursal
SET Horario_Sucursal = '08:00:00'
WHERE ID_Sucursal = 1;

UPDATE Sucursal
SET Horario_Sucursal = '08:00:00'
WHERE ID_Sucursal = 5;


/* TABLA EMPLEADO */

UPDATE Empleado
SET Apellido_Empleado = 'Chavez'
WHERE ID_Empleado = 3;

UPDATE Empleado
SET Telefono_Empleado = '5526439298'
WHERE ID_Empleado = 8;

/* TABLA PLAN_CONTRATACION */

UPDATE PLAN_CONTRATACION
SET Tipo_Plan = 'BLACK'
WHERE ID_Plan_Contratacion = 3;

UPDATE PLAN_CONTRATACION
SET Monto_Pago = '1000'
WHERE ID_Plan_Contratacion = 3;

/*TABLA ATLETA*/

UPDATE ATLETA
SET Enfermedades_Atleta = 'Diabetes'
WHERE ID_Atleta = 14;

UPDATE ATLETA
SET Edad_Atleta = 32
WHERE ID_Atleta = 8;



