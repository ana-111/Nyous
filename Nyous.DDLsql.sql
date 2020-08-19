CREATE DATABASE nyous;

USE nyous;

CREATE TABLE acesso (
	IdAcesso INT PRIMARY KEY IDENTITY not null,
	Tipo VARCHAR (50) not null
);

CREATE TABLE categoria (
	IdCategoria INT PRIMARY KEY IDENTITY not null,
	Titulo VARCHAR (50) not null
);

CREATE TABLE localizacao (
	IdLocalizacao INT PRIMARY KEY IDENTITY not null,
	Logradouro VARCHAR (50) not null,
	Numero VARCHAR (50),
	Complemento VARCHAR (50),
	Bairro VARCHAR (50),
	Cidade VARCHAR (50),
	UF CHAR (2),
	CEP VARCHAR (10) 
);

CREATE TABLE usuario (
	IdUsuario INT PRIMARY KEY IDENTITY not null, 
	Nome VARCHAR (100) not null,
	Email VARCHAR (80) not null,
	Senha varchar (100) not null,
	DataNascimento DATETIME, 


	--FK
	IdAcesso INT FOREIGN KEY REFERENCES Acesso (IdAcesso)
);

CREATE TABLE evento (
	IdEvento INT PRIMARY KEY IDENTITY not null, 
	DataEvento DATETIME not null,
	AcessoRestrito BINARY DEFAULT 0,
	Capacidade INT not null,
	Descricao VARCHAR (255),

	--FK
	IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao (IdLocalizacao),
	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
);

CREATE TABLE convite (
	IdConvite INT PRIMARY KEY IDENTITY not null,
	Confirmado BIT DEFAULT null,

	--FK
	IdEvento INT FOREIGN KEY REFERENCES Evento (IdEvento),
	IdUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE presenca (
	IdPresenca INT PRIMARY KEY IDENTITY not null,
	Confirmado BIT DEFAULT null,

	--FK
	IdEvento INT FOREIGN KEY REFERENCES Evento (IdEvento),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),

);
