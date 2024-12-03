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

