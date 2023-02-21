CREATE DATABASE project;

USE project;

CREATE TABLE Fazenda(

	Fazenda_ID INT IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Agua_dia INT NOT NULL,
	Ph_solo DECIMAL(2,1) NOT NULL,
	Veneno_necessario VARCHAR(3) NOT NULL,

	CONSTRAINT PK_fazenda_id PRIMARY KEY (Fazenda_ID)
);

CREATE TABLE Colheita(

	Colheita_ID INT IDENTITY NOT NULL,
	Planta_ID INT NULL,
	Agric_ID INT NULL,
	Fazenda_ID INT NULL,
	Metros_quad INT NOT NULL,
	Peso_Kg INT NULL,
	Data VARCHAR(50) NULL,
	Tempo_horas INT NULL,

	CONSTRAINT PK_colheita_id PRIMARY KEY (Colheita_ID)
);

CREATE TABLE Agricultor(

	Agric_ID INT IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Idade INT NULL,
	CPF VARCHAR(14) NOT NULL,
	Area VARCHAR(20) NULL,

	CONSTRAINT PK_agricultor_id PRIMARY KEY (Agric_ID) 
);

CREATE TABLE Plantio(

	Plantio_ID INT IDENTITY NOT NULL,
	Planta_ID INT NULL,
	Agric_ID INT NULL,
	Fazenda_ID INT NULL,
	Data VARCHAR(50) NULL,
	Sementes INT NOT NULL,

	CONSTRAINT PK_plantio_id PRIMARY KEY (Plantio_ID)
);

CREATE TABLE Planta(

	Planta_ID INT IDENTITY NOT NULL,
	Nome VARCHAR(30) NOT NULL,
	Agua_dia INT NOT NULL,
	Ph_solo DECIMAL(2,1) NOT NULL,
	Veneno VARCHAR(3) NOT NULL,

	CONSTRAINT PK_planta_id PRIMARY KEY (Planta_ID) 
);

ALTER TABLE Colheita
	ADD CONSTRAINT FK_planta_id FOREIGN KEY (Planta_ID) REFERENCES Planta;

ALTER TABLE Colheita
	ADD CONSTRAINT FK_agric_id FOREIGN KEY (Agric_ID) REFERENCES Agricultor;

ALTER TABLE Colheita
	ADD CONSTRAINT FK_fazenda_id FOREIGN KEY (Fazenda_ID) REFERENCES Fazenda;

ALTER TABLE Plantio
	ADD CONSTRAINT FK_planta_id FOREIGN KEY (Planta_ID) REFERENCES Planta;

ALTER TABLE Plantio
	ADD CONSTRAINT FK_agric_id FOREIGN KEY (Agric_ID) REFERENCES Agricultor;

ALTER TABLE Plantio
	ADD CONSTRAINT FK_fazenda_id FOREIGN KEY (Fazenda_ID) REFERENCES Fazenda;



