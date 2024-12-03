CREATE TABLE Contacto_Emergencia(
	ID_Contacto_Emergencia INTEGER,
	PRIMARY KEY (ID_Contacto_Emergencia),
	Nombre_CE VARCHAR(50) NOT NULL,
	Numero_TelCE CHAR(10) NOT NULL
);

CREATE TABLE WOD (
	ID_WOD INTEGER,
	PRIMARY KEY (ID_WOD),
	Fecha DATE NOT NULL,
	Registro_Tiempo FLOAT8 NOT NULL,
	Lugar_Disponible VARCHAR(50),
	CHECK (Lugar_Disponible IN ('DISPONIBLE', 'OCUPADO')),
	Progreso_Atleta FLOAT8 NOT NULL,
	Nivel_Clasificación VARCHAR(20)
);

CREATE TABLE RegistroConcurso(
	ID_Registro_Concurso INTEGER,
	PRIMARY KEY(ID_Registro_Concurso),
	Nivel_Clasificacion VARCHAR(20) NOT NULL,
	Resultado_Peso FLOAT8 NOT NULL,
	Resultado_Tiempo FLOAT8 NOT NULL
);

CREATE TABLE Ficha_parametros (
	ID_Ficha_parametros INTEGER,
	PRIMARY KEY (ID_Ficha_parametros),
	Peso FLOAT4 NOT NULL,
	Edad_Metabolica INTEGER NOT NULL,
	Porcentaje_Grasa FLOAT4,
	Porcentaje_Musculo FLOAT4,
	Fecha DATE NOT NULL,
	IMC FLOAT4 ,
	Ficha_sucursal varchar(20)
);

CREATE TABLE Domicilio (
	ID_Domicilio INTEGER,
	PRIMARY KEY (ID_Domicilio),
	Calle VARCHAR(20) NOT NULL,
	NumExt INTEGER NOT NULL,
	Colonia VARCHAR(20) NOT NULL,
	Alcaldia VARCHAR(20)
);

CREATE TABLE Sucursal (
	ID_Sucursal INTEGER,
	PRIMARY KEY (ID_Sucursal),
	Domicilio INTEGER,
    FOREIGN KEY (ID_Domicilio) REFERENCES Domicilio(ID_Domicilio),
	Horario_Sucursal TIME NOT NULL,
    Id_Domicilio INTEGER,
	Registro_Entrada TIME NOT NULL,
	Registro_Salida TIME NOT NULL,
	Nombre_Sucursal varchar(20) NOT NULL,
	CHECK (Nombre_Sucursal IN ('CENTRO', 'SANTA FE', 'AEROPUERTO', 'UNIVERSIDAD', 'SATELITE'))
);

CREATE TABLE Empleado (
	ID_Empleado INTEGER,
	PRIMARY KEY(ID_Empleado),
	ID_Sucursal INTEGER,
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal),
	ID_Domicilio INTEGER,
    FOREIGN KEY (ID_Domicilio) REFERENCES Domicilio(ID_Domicilio),
	RFC VARCHAR(20) NOT NULL,
	Horario_Empleado TIME NOT NULL,
	Apellido_Empleado VARCHAR(20) NOT NULL,
	Nombre_Empleado VARCHAR(20) NOT NULL,
	Telefono_Empleado CHAR(10) NOT NULL
);

CREATE TABLE Plan_Contratacion(
	ID_Plan_Contratacion INTEGER, 
	PRIMARY KEY (ID_Plan_Contratacion),
	Monto_Pago INTEGER NOT NULL,
	CHECK (Monto_Pago IN ('250', '400', '600', '1000')),
	Tipo_Plan VARCHAR(20) NOT NULL,
	CHECK (Tipo_Plan IN ('WHITE', 'GREEN', 'GRAY', 'BLACK')),
	Num_Clases INTEGER,
	Fecha_Inicio DATE,
    Fecha_Fin DATE
);

CREATE TABLE Atleta (
	ID_Atleta INTEGER,
	PRIMARY KEY (ID_Atleta),
	
	ID_Sucursal INTEGER,
	FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal),
	ID_Contacto_Emergencia INTEGER,
	FOREIGN KEY (ID_Contacto_Emergencia) REFERENCES Contacto_Emergencia(ID_Contacto_Emergencia),
	ID_WOD INTEGER,
	FOREIGN KEY (ID_WOD) REFERENCES WOD(ID_WOD),
	ID_Ficha_parametros INTEGER,
	FOREIGN KEY (ID_Ficha_parametros) REFERENCES Ficha_parametros(ID_Ficha_parametros),
	ID_Domicilio INTEGER,
    FOREIGN KEY (ID_Domicilio) REFERENCES Domicilio(ID_Domicilio),
	ID_Plan_Contratacion INTEGER,
    FOREIGN KEY (ID_Plan_Contratacion) REFERENCES Plan_Contratacion(ID_Plan_Contratacion),
	ID_Registro_Concurso INTEGER,
	FOREIGN KEY (ID_Registro_Concurso) REFERENCES RegistroConcurso(ID_Registro_Concurso),
	
	Nombre_Atleta VARCHAR(50) NOT NULL,
	Edad_Atleta INTEGER NOT NULL,
	Sexo_Atleta VARCHAR(10) NOT NULL,
	CHECK (Sexo_Atleta IN ('M','F')),
	Estatura_Atleta FLOAT4,
	Enfermedades_Atleta VARCHAR(50),
	Número_TelAtleta CHAR(10)
);