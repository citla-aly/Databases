
/* TABLA CONTACTO DE EMERGENCIA */

INSERT INTO Contacto_Emergencia (ID_Contacto_Emergencia, Nombre_CE, Numero_TelCE)
 VALUES  (1, 'Mario', 5532123434),
 		 (2, 'Juan', 5534567847),
		 (3, 'Miguel', 5523346756),
		 (4, 'Antonio', 5590569059),
		 (5, 'Jose', 5554645667),
		 (6, 'Claudia', 5556956959),
		 (7, 'Ana', 5545454545),
		 (8, 'Monica', 5592949493),
		 (9, 'Dayna', 5534534334),
		 (10, 'Maria', 5545545432),
		 (11, 'Sofia', 5543266776),
		 (12, 'Diana', 5534554543),
		 (13, 'Marco', 5578564534),
		 (14, 'Luis', 5556565678),
		 (15, 'Juan', 5584562356),
		 (16, 'Mario', 5534546878)
;

/* TABLA WOD */

INSERT INTO WOD(ID_WOD, Fecha, Registro_Tiempo, Lugar_Disponible, Progreso_Atleta, Nivel_Clasificación)
 VALUES  (1,'2022-06-29', 29.9, 'DISPONIBLE', 35, 1),
		 (2, '2022-06-29', 29.9, 'DISPONIBLE', 45, 2),
		 (3, '2022-07-23', 35.7, 'DISPONIBLE', 64, 4), 
		 (4, '2022-02-22', 67.6, 'OCUPADO', 88, 5),
		 (5, '2022-01-04', 22.4, 'DISPONIBLE', 23, 3),
		 (6, '2022-04-02', 10.3, 'OCUPADO', 45, 12),
		 (7, '2022-05-07', 20.6, 'DISPONIBLE', 13, 7),
		 (8, '2022-06-05', 23.4, 'OCUPADO', 23, 8),
		 (9, '2022-07-05', 21.3, 'OCUPADO', 26, 6),
		 (10, '2022-09-14', 22.5, 'DISPONIBLE', 25, 9),
		 (11, '2022-03-13', 27.9, 'OCUPADO', 68, 11),
		 (12, '2022-05-14', 13.5, 'DISPONIBLE', 37, 10),
		 (13, '2022-03-14', 9.9, 'DISPONIBLE', 84, 13),
		 (14, '2022-06-19', 12.5, 'OCUPADO', 85, 15),
		 (15, '2022-04-18', 45.6, 'DISPONIBLE', 35, 15),
		 (16, '2022-09-10', 79.8, 'OCUPADO', 92, 12)
;

/* TABLA REGISTROCONCURSO */

INSERT INTO RegistroConcurso(ID_Registro_Concurso, Nivel_Clasificacion, Resultado_Peso, Resultado_Tiempo)
	VALUES  (2, 4, 63.4, 34.5), 
			(1, 3, 58.5, 63.1),
			(3, 1, 70.5, 54.6), 
			(4, 2, 72.3, 67.6), 
			(5, 6, 80.4, 62.5), 
			(6, 7, 83.5, 68.4),
			(7, 8, 87.4, 35.4), 
			(8, 10, 73.7, 38.5), 
			(9, 15, 62.8, 59.6), 
			(10, 9, 58.9, 9.4), 
			(11, 3, 65.3, 63.1), 
			(12, 14, 66.9, 68.6), 
			(13, 13, 80.1, 98.8), 
			(14, 10, 80.5, 2.7), 
			(15, 3, 80.7, 9.8), 
			(16, 5, 82.3, 7.1), 
			(17, 2, 65.4, 5.6)
;

/* TABLA FICHA_PARAMETROS */

INSERT INTO Ficha_parametros (ID_Ficha_parametros, Peso, Edad_Metabolica, Porcentaje_Grasa, Porcentaje_Musculo, Fecha, IMC, Ficha_sucursal)
	VALUES  (2,78.9, 7, 23.5, 54.4, '2022-06-23', 33,2),
			(1, 78.5, 5, 33.1, 23.7, '2022-06-29',33,1),
			(3, 50.2, 2, 35.6, 22.7, '2022-03-27', 34,3),
			(4, 78.9, 4, 38.7, 25.7, '2022-05-16', 23,4),
			(5, 74.5, 6, 56.8, 26.4, '2022-09-16', 23,5),
			(6, 67.9, 9, 34.6, 23.4, '2022-02-26', 12,6),
			(7, 90.6, 1, 26.4, 25.2, '2022-01-15', 34,7),
			(8, 69.3, 2, 23.4, 26.4, '2022-06-13', 56,8),
			(9, 85.3, 3, 12.1, 45.6, '2022-08-13', 25,9),
			(10, 78.9, 4, 23.5, 54.2, '2022-09-16', 28,10),
			(11, 63.5, 5, 23.4, 23.6, '2022-06-03', 27,11),
			(12, 82.5, 6, 32.1, 21.2, '2022-04-07', 12,12),
			(13, 89.3, 7, 22.1, 22.1, '2022-03-07', 15,13),
			(14, 91.6, 8, 12.3, 15.7, '2022-09-09', 25,14),
			(15, 25-4, 9, 16.7, 34.5, '2022-03-23', 20,15),
			(16, 86.3, 5, 23.4, 23.4, '2022-03-12', 21,16)
;

/* TABLA DOMICILIO */

INSERT INTO Domicilio (ID_Domicilio, Calle, NumExt, Colonia, Alcaldia)
	VALUES  (1, 'Av. Satelite', 596, 'Heroes de Satelite', 'TLALNEPANTLA'),
			(2, 'Madero', 123, 'Centro', 'CUAUHTEMOC'),
			(3, 'Carretera Toluca', 256, 'Santa Fe', 'CUAJIMALPA'),
			(4, 'Circuito Aeropuerto', 23, 'Aeropuerto', 'VENUSTIANO CARRANZA'),
			(5, 'Copilco', 29, 'Universidad', 'COYOACAN')

;

INSERT INTO Domicilio (ID_Domicilio, Calle, NumExt, Colonia, Alcaldia)
	VALUES 	(6, 'Av, Coyoacán', 170, 'Del Valle Sur', 'COYOACAN'),
			(7, 'Av. Tlahuac', 4333, 'LomasEstrella', 'IZTAPALAPA'),
			(8, 'RincónSur', 45, 'B.ResidencialSur', 'XOCHIMILCO'),
			(9, 'Ley de C. y T.', 4309, 'Plan de Ayala', 'TLALPAN'),
			(10, 'Temozon', 345, 'Chichicáspatl', 'TLALPAN'),
			(11, 'Mixtepec', 678, 'Cafetales', 'COYOACÁN'),
			(12, 'Av. Tamaulipas', 789, 'Santa Fe', 'CUAJIMALPA'),
			(13, 'Anís', 8009, 'E. Magdalena', 'IZTACALCO'),
			(14, 'Av. Álvaro O.', 6775, 'Roma Norte', 'Cuauhtémoc'),
			(15, 'Av. Santa Fe', 1234, 'Santa Fe', 'Cuajimalpa'),
			(16, 'Amatenango', 0989, 'Cafetales', 'COYOACÁN')
;

/* TABLA SUCURSAL */

INSERT INTO Sucursal(ID_Sucursal, Horario_Sucursal, Id_Domicilio, Registro_Entrada, Registro_Salida, Nombre_Sucursal)
	VALUES  (1, '06:00:00', 1, '07:25:00', '09:03:00', 'SATELITE'),
			(2, '06:00:00', 2, '07:25:00', '09:03:00', 'CENTRO'),
			(3, '06:00:00', 3, '08:23:00', '09:56:00', 'SANTA FE'),
			(4, '06:00:00', 4, '23:34:00', '23:58:00', 'AEROPUERTO'),
			(5, '06:00:00', 5, '15:24:00', '17:30:00', 'UNIVERSIDAD'),
			(6, '06:00:00', 1, '08:34:00', '12:03:00', 'SATELITE'),
			(7, '06:00:00', 2, '10:56:00', '11:03:00', 'CENTRO'),
			(8, '06:00:00', 3, '14:35:00', '17:56:00', 'SANTA FE'),
			(9, '06:00:00', 4, '23:20:00', '23:58:00', 'AEROPUERTO'),
			(10, '06:00:00', 5, '10:50:00', '17:30:00', 'UNIVERSIDAD'),
			(11, '06:00:00', 1, '13:24:00', '17:03:00', 'SATELITE'),
			(12, '06:00:00', 2, '15:40:00', '16:03:00', 'CENTRO'),
			(13, '06:00:00', 3, '11:23:00', '17:56:00', 'SANTA FE'),
			(14, '06:00:00', 4, '19:34:00', '23:58:00', 'AEROPUERTO'),
			(15, '06:00:00', 5, '11:45:00', '14:30:00', 'UNIVERSIDAD')
;

/* TABLA EMPLEADO */

INSERT INTO Empleado (ID_Empleado, ID_Sucursal, ID_Domicilio, RFC, Horario_Empleado, Apellido_Empleado,Nombre_Empleado,Telefono_Empleado)
	VALUES  (1, 2, 1, 'LOAC730602', '17:30:00', 'Lopez', 'Claudia', 5523345667),
			(2, 3, 3, 'TOEM120501', '12:30:00', 'Toral', 'Marco', 5543213478),
			(3, 5, 8, 'MALO230899', '17:30:00', 'Martínez', 'Osvaldo', 5567889001),
			(4, 1, 10, 'TRME090900', '6:00:00', 'Trejo', 'Enrique', 5567122344),
			(5, 3, 12, 'LAMT013097', '17:30:00', 'Lazcano', 'Tatiana', 5556789010),
			(6, 2, 4, 'MEPS0081295', '12:30:00', 'Mercado', 'Sofía', 5588289810),
			(7, 4, 2, 'TIGA083001', '12:30:00', 'Tirado', 'Antonio', 5578567512),
			(8, 1, 6, 'GACA071492', '6:00:00', 'Galvan', 'Andrea', 5582114563),
			(9, 5, 7, 'ESCS300802', '12:30:00', 'Escobedo', 'Sebastián', 5543451187),
			(10, 4, 13, 'NAEE270490', '17:30:00', 'Narváez', 'Erick', 5567112345),
			(11, 2, 14, 'ABGA220200', '6:00:00', 'Abanero', 'Alejandro', 5511223344),
			(12, 1, 5, 'GOUC090999', '17:30:00', 'González', 'Camila', 5553342189),
			(13, 3, 9, 'UREA020202', '12:30:00', 'Uribe', 'Joshua', 5553342123),
			(14, 5, 11, 'LATV120398', '6:00:00', 'Larrain', 'Valentina', 5523223413),
			(15, 4, 15, 'NALK170396', '6:00:00', 'Nabarro', 'Karla', 5523939988)

;
	

/* TABLA PLAN_CONTRATACION */


INSERT INTO Plan_Contratacion(ID_Plan_Contratacion,Monto_Pago,Tipo_Plan,Num_Clases,Fecha_Inicio,Fecha_Fin)
	VALUES	(1, '250', 'WHITE', 5, '2022-06-29', '2022-07-29'),
			(2, '400', 'GREEN', 7, '2022-06-05', '2022-07-05'),
			(3, '600', 'GRAY', 10, '2022-06-01', '2022-07-01'),
			(4, '1000', 'BLACK', 15, '2022-06-15', '2022-07-15'),
			(5, '600', 'GRAY', 10, '2022-06-10', '2022-07-10'),
			(6, '250', 'WHITE', 5, '2022-06-21', '2022-07-21'),
			(7, '250', 'WHITE', 5, '2022-06-01', '2022-07-01'),
			(8, '1000', 'BLACK', 15, '2022-06-13', '2022-07-13'),
			(9, '400', 'GREEN', 7, '2022-06-07', '2022-07-07'),
			(10, '1000', 'BLACK', 15, '2022-06-24', '2022-07-24' ),
			(11, '600', 'GRAY', 10, '2022-06-15', '2022-07-15'),
			(12, '400', 'GREEN', 7, '2022-06-08', '2022-07-08'),
			(13, '1000', 'BLACK', 15, '2022-06-11', '2022-07-11'),
			(14, '250', 'WHITE', 5, '2022-06-06', '2022-07-06'),
			(15, '600', 'GRAY', 10, '2022-06-10', '2022-07-10')
;

/*TABLA ATLETA*/

INSERT INTO Atleta(ID_Atleta, ID_Sucursal, ID_Contacto_Emergencia, ID_WOD, ID_Ficha_parametros, ID_Domicilio, ID_Plan_Contratacion, ID_Registro_Concurso, Nombre_Atleta, Edad_Atleta, Sexo_Atleta, Estatura_Atleta, Enfermedades_Atleta, Número_TelAtleta)
 VALUES (1, 1, 1, 3, 1, 6, 4, 1,'Luis', 23, 'M', 1.76, 'Ninguna', 5526334233), 
 (2, 2, 2, 3, 2, 7, 3, 2,  'Marco', 25, 'M', 1.80, 'Ninguna', 5523476565),
 (3, 1, 3, 4, 3, 8, 4,3, 'Matilda', 18, 'F', 1.60, 'Diabetes', 5512344321), 
 (4, 4, 4, 6, 4, 9, 6, 4,'Fernanda', 30 , 'F', 1.72, 'Artritis', 5545678776),
 (5, 2, 5, 2, 5, 10, 9, 5, 'Damián', 23, 'M', 1.78, 'Ninguna', 5512211122),
 (6, 1, 6, 8, 6, 11, 10, 6,'Mariano', 20, 'M', 1.90, 'Ninguna', 5598876512), 
 (7, 3, 7, 12, 7, 12, 12, 7,'Valeria', 23, 'F', 1.63, 'Ninguna', 5566774334),
 (8, 3, 8, 10, 8, 13, 15, 8, 'Antonio', 23, 'M', 1.85, 'Ninguna', 5509885562),
 (9, 4, 9, 11, 9, 14, 13, 9,'Ana', 21, 'F', 1.55, 'Ninguna', 5523217694),
 (10, 1, 10, 3, 10, 15, 14, 10, 'Andrea', 28, 'F', 1.69, 'Ninguna', 5501349456),
 (11, 3, 11, 9, 11, 16, 8, 11,'Dayana', 26, 'F', 1.75, 'Ninguna', 5576810123),
 (12, 4, 12, 7, 12, 11, 7, 12,'Daniela', 22, 'F', 1.68, 'Ninguna', 5592136782),
 (13, 2, 13, 11, 13, 13, 5, 13,'Sebastián', 52, 'M', 1.73, 'Hipertensión', 5598735675),
 (14, 3, 14, 12, 14, 13, 9, 14,'Diego', 17, 'M', 1.68, 'Ninguna', 5543098054),
 (15, 4, 15, 16, 15, 11, 12, 15, 'Alberto', 55, 'M', 1.77, 'Ninguna', 5532124566),
 (16, 13, 16, 14, 16, 2, 13, 16,'Maria', 25, 'F', 1.67, 'Ninguna', 5523423444)
;
