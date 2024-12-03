CREATE TABLE Atleta (
	ID_Atleta INTEGER,
	PRIMARY KEY (ID_Atleta),
	Nombre_Atleta VARCHAR(50) NOT NULL,
	Edad_Atleta INTEGER NOT NULL,
	Sexo_Atleta VARCHAR(10) NOT NULL,
	CHECK (Sexo_Atleta IN ('M','F')),
	Estatura_Atleta FLOAT4,
	Enfermedades_Atleta VARCHAR(50),
	Número_TelAtleta INTEGER
);

CREATE TABLE ContactoEmergencia (
	ID_Contacto_Emergencia INTEGER,
	PRIMARY KEY (ID_Contacto_Emergencia),
	ID_Atleta INTEGER,
	FOREIGN KEY (ID_Atleta) REFERENCES Atleta(ID_Atleta),
	Nombre_CE VARCHAR(50) NOT NULL,
	Numero_TelCE INTEGER NOT NULL
);

CREATE TABLE WOD (
	ID_WOD INTEGER,
	PRIMARY KEY (ID_WOD),
	ID_Atleta INTEGER,
	FOREIGN KEY (ID_Atleta) REFERENCES Atleta(ID_Atleta),
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
	ID_Atleta INTEGER,
	FOREIGN KEY (ID_Atleta) REFERENCES Atleta(ID_Atleta),
	Nivel_Clasificacion INTEGER NOT NULL,
	Resultado_Peso INTEGER NOT NULL,
	Resultado_Tiempo INTEGER NOT NULL
);

CREATE TABLE Concurso (
	ID_Concurso INTEGER,
	PRIMARY KEY (ID_Concurso),
	ID_Registro_Concurso INTEGER,
	FOREIGN KEY (ID_Registro_Concurso) REFERENCES RegistroConcurso(ID_Registro_Concurso),
	Registro_concurso INTEGER NOT NULL, 
    Clasificacion VARCHAR(30)
);

CREATE TABLE Ficha_parametros (
	ID_Ficha_parametros INTEGER,
	PRIMARY KEY (ID_Ficha_parametros),
	ID_Atleta INTEGER,
	FOREIGN KEY (ID_Atleta) REFERENCES Atleta(ID_Atleta),
	Peso FLOAT4 NOT NULL,
	Edad_Metabolica INTEGER NOT NULL,
	Porcentaje_Grasa FLOAT4,
	Porcentaje_Musculo FLOAT4,
	Fecha DATE NOT NULL,
	IMC FLOAT4 ,
	Ficha_sucursal varchar(20)
);

CREATE TABLE Sucursal (
	ID_Sucursal INTEGER,
	PRIMARY KEY (ID_Sucursal),
	Horario_Sucursal TIMESTAMP NOT NULL,
    Id_Domicilio INTEGER,
	Registro_Entrada TIMESTAMP NOT NULL,
	Registro_Salida TIMESTAMP NOT NULL,
	Nombre_Sucursal varchar(20) NOT NULL,
	CHECK (Nombre_Sucursal IN ('CENTRO', 'SANTA FE', 'AEROPUERTO', 'UNIVERSIDAD', 'SATELITE'))
);

CREATE TABLE Domicilio (
	ID_Domicilio INTEGER,
	PRIMARY KEY (ID_Domicilio),
	Calle VARCHAR(20) NOT NULL,
	NumExt INTEGER NOT NULL,
	Colonia VARCHAR(20) NOT NULL,
	Alcaldia VARCHAR(20)
);

CREATE TABLE Empleado (
	ID_Empleado INTEGER,
	PRIMARY KEY(ID_Empleado),
	ID_Sucursal INTEGER,
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal),
	ID_Domicilio INTEGER,
    FOREIGN KEY (ID_Domicilio) REFERENCES Domicilio(ID_Domicilio),
	RFC VARCHAR(20) NOT NULL,
	Horario_Empleado TIMESTAMP NOT NULL,
	Apellido_Empleado VARCHAR(20) NOT NULL,
	Nombre_Empleado VARCHAR(20) NOT NULL,
	Telefono_Empleado VARCHAR(20) NOT NULL
);

CREATE TABLE Plan_Contratacion(
	ID_Plan_Contratacion INTEGER, 
	PRIMARY KEY (ID_Plan_Contratacion),
	ID_Atleta INTEGER,
	FOREIGN KEY (ID_Atleta) REFERENCES Atleta(ID_Atleta),
	Monto_Pago INTEGER NOT NULL,
	CHECK (Monto_Pago IN ('250', '400', '600', '1000')),
	Tipo_Plan VARCHAR(20) NOT NULL,
	CHECK (Tipo_Plan IN ('WHITE', 'GREEN', 'GRAY', 'BLACK')),
	Num_Clases INTEGER,
	Fecha_Inicio DATE,
    Fecha_Fin DATE
    );

CREATE TABLE Pago(
	ID_Pago INTEGER,
	PRIMARY KEY (ID_Pago),
	ID_Plan_Contratacion INTEGER,
    FOREIGN KEY (ID_Plan_Contratacion) REFERENCES Plan_Contratacion(ID_Plan_Contratacion),
	Fecha_pago DATE NOT NULL,
	Monto INTEGER NOT NULL,
	CHECK (Monto IN ('250', '400', '600', '1000')),
    FormaDePago VARCHAR(30),
	CHECK (FormaDePago IN ('EFECTIVO', 'T. CREDITO', 'T. DEBITO'))
);