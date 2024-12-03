--PRÁCTICA 10

--EJERCICIO 1. Realiza 3 vistas

--PRIMERA VISTA
--Vista de todos los atletas inscritos con su informacion nombre,
-- que hayan registrado su fecha de inicio del 2022-06-29
-- a la fecha 2022-07-24 mostrando su colonia donde viven
CREATE VIEW atletasini(nombre_atleta,colonia,fecha_inicio)
AS SELECT nombre_atleta,colonia,fecha_inicio
   FROM atleta INNER JOIN domicilio d on atleta.id_domicilio = d.id_domicilio
               INNER JOIN plan_contratacion pc on atleta.id_plan_contratacion = pc.id_plan_contratacion
   WHERE fecha_inicio between '2022-06-06' AND '2022-06-29'
   order by fecha_inicio;

SELECT*FROM atletasini


--SEGUNDA VISTA
--Vista de todos los atletas que su monto de pago
-- se encuentre entre 250 y 1000 pesos viendo su
-- nivel de clasificacion
CREATE VIEW atletasPAGO(nombre_atleta,monto_pago,nivel_clasificacion)
AS SELECT nombre_atleta,monto_pago,nivel_clasificación
   FROM atleta INNER JOIN  plan_contratacion pc on atleta.id_plan_contratacion = pc.id_plan_contratacion
               INNER JOIN wod w on atleta.id_wod = w.id_wod
   WHERE monto_pago between '250' AND '1000'
   order by monto_pago;

SELECT*FROM atletasPAGO

--TERCER VISTA
--Vista de todos los atletas inscritos con su informacion nombre,
-- que se encuentren sin padecimiento de enfermedad alguna
-- mostrando su sexo, además del número del contacto de emergencia y su colonia

CREATE VIEW atletassano(nombre_atleta,sexo_atleta,enfermedades_atleta,numero_telce,colonia)
AS SELECT nombre_atleta,sexo_atleta,enfermedades_atleta,numero_telce,colonia
   FROM atleta INNER JOIN contacto_emergencia ce on ce.id_contacto_emergencia = atleta.id_contacto_emergencia
               INNER JOIN domicilio d on atleta.id_domicilio = d.id_domicilio
   WHERE Enfermedades_Atleta = 'Ninguna'
   order by Sexo_Atleta;

SELECT*FROM atletassano


-- EJERCICIO 2. Crea índices a los catálogos del proyecto y a las tablas que considere necesarias.

CREATE INDEX idx_sexo_atleta ON atleta(sexo_atleta);

CREATE INDEX idx_número_telatleta ON atleta(número_telatleta);

CREATE INDEX idx_numero_telce ON contacto_emergencia(numero_telce);

CREATE INDEX idx_colonia ON domicilio(colonia);

CREATE INDEX idx_nombre_empleado ON empleado(nombre_empleado);

CREATE INDEX idx_imc ON ficha_parametros(imc);

CREATE INDEX idx_num_clases ON plan_contratacion(num_clases);

CREATE INDEX idx_monto_pago ON plan_contratacion(monto_pago);

CREATE INDEX idx_domicilioSUC ON sucursal(domicilio);

CREATE INDEX idx_progreso_atleta ON wod(progreso_atleta);

-- EJERCICIO 3. Realiza 2 CTE de tipo SELECT.
-- CONSULTA 1: Nos interesa ver el progreso de la Atleta llamada María desde su primera inscripción, clasificando sus tiempos según el nivel que haya alcanzado
WITH nivel_competidor AS(
    SELECT
        nombre_atleta,
        registro_tiempo as tiempo,
        (CASE
             WHEN 'nivel_clasificacion' = 'AVANZADO' THEN 'Nivel 1'
             WHEN 'nivel_clasificacion' = 'PRINCIPIANTE' THEN 'Nivel 3'
             ELSE 'Nivel 2'
            END)  nivel,
        'nivel_clasificacion', fecha
    FROM wod,atleta
)
SELECT
    nombre_atleta,
    tiempo,
    nivel,
    fecha
FROM nivel_competidor
WHERE
        nombre_atleta = 'Maria'
ORDER BY fecha;

-- CONSULTA 2:  Queremos saber el histórico de los planes que han contratado los atletas y cuantas clases contratarón.
WITH plan AS(
    SELECT
        nombre_atleta,
        num_clases as clases,
        (CASE
             WHEN tipo_plan = 'BLACK' THEN 'PREMIUM'
             WHEN tipo_plan = 'GRAY' THEN 'BÁSICO'
             ELSE 'ECONÓMICO'
            END) Plan_Contratado,
        tipo_plan, fecha_inicio
    FROM plan_contratacion,atleta
)
SELECT
    nombre_atleta,
    clases,
    Plan_Contratado,
    fecha_inicio
FROM plan
WHERE
        clases > 5
ORDER BY fecha_inicio;

-- EJERCICIO 4.  Realiza 2 CTE de tipo DELETE.
--Consulta 1
--Elimina los montos de pago menores a 1000 en la tabla plan_contratacion
WITH usuarios_premium AS (
    DELETE FROM plan_contratacion
        WHERE monto_pago < 1000 RETURNING *
)
INSERT INTO plan_contratacion
SELECT * FROM usuarios_premium;
--Consulta 2
--Elimina los pesos menores a 50 de la tabla ficha_parametros
WITH peso_minimo AS (
    DELETE FROM ficha_parametros
        WHERE peso < 50 RETURNING *
)
INSERT INTO ficha_parametros
SELECT * FROM peso_minimo;



