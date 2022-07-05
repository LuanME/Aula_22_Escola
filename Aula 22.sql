create database Escola;

create table  Instituicao(
	id int primary key identity,
	nome varchar(100) not null,
	endereco varchar(100) not null,
	cnpj int not null,
);

create table  Aluno(
	id int primary key identity,
	id_Instituicao int not null,
	nome varchar(100) not null,
	sobrenome varchar(100) not null,
	matricula int not null,

		CONSTRAINT FK_Instituicao_Aluno FOREIGN KEY (id_Instituicao) REFERENCES Instituicao(id)

);
