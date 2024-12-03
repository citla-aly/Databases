/* TABLA CONTACTO DE EMERGENCIA */

SELECT Nombre_CE, Numero_TelCE
FROM Contacto_Emergencia
WHERE Nombre_CE = 'Mario';

SELECT Nombre_CE, Numero_TelCE
FROM Contacto_Emergencia
WHERE ID_Contacto_Emergencia = 13;

/* TABLA WOD */

SELECT Fecha, Lugar_Disponible
FROM WOD
WHERE ID_WOD = 9;

SELECT Progreso_Atleta, Nivel_Clasificación
FROM WOD
WHERE ID_WOD = 13;

/* TABLA REGISTROCONCURSO */

SELECT Resultado_Peso, Resultado_Tiempo
FROM RegistroConcurso
WHERE ID_Registro_Concurso = 1;

SELECT Resultado_Peso, Nivel_Clasificacion
FROM RegistroConcurso
WHERE ID_Registro_Concurso = 5;

/* TABLA FICHA_PARAMETROS */

SELECT Porcentaje_Grasa, Porcentaje_Musculo
FROM Ficha_parametros
WHERE ID_Ficha_parametros = 2;

SELECT IMC
FROM Ficha_parametros
WHERE ID_Ficha_parametros = 3;

/* TABLA DOMICILIO */

SELECT Calle, NumExt
FROM Domicilio
WHERE Colonia = 'Centro';

SELECT Calle, NumExt
FROM Domicilio
WHERE ID_Domicilio = 3;

/* TABLA SUCURSAL */

SELECT Registro_Entrada, Registro_Salida
FROM Sucursal
WHERE Nombre_Sucursal= 'AEROPUERTO';

SELECT Horario_Sucursal
FROM Sucursal
WHERE Nombre_Sucursal= 'CENTRO';

/* TABLA EMPLEADO */

SELECT Apellido_Empleado 
FROM EMPLEADO
WHERE ID_Empleado =11;

SELECT Telefono_Empleado 
FROM EMPLEADO
WHERE ID_Empleado = 7;

/* TABLA PLAN_CONTRATACION */

SELECT  Tipo_Plan 
FROM PLAN_CONTRATACION
WHERE ID_Plan_Contratacion = 8;

SELECT Monto_Pago 
FROM PLAN_CONTRATACION
WHERE ID_Plan_Contratacion = 15;

/*TABLA ATLETA*/

SELECT Nombre_Atleta 
FROM ATLETA
WHERE ID_Atleta = 9;

SELECT Enfermedades_Atleta
FROM ATLETA
WHERE ID_Atleta = 12;



