
create table "ATHOSCODE".FUNCIONARIO
(
	ID INTEGER default AUTOINCREMENT: start 1 increment 1 not null primary key,
	NOME VARCHAR(50) not null,
	SOBRENOME VARCHAR(50) not null,
	CPF VARCHAR(50),
	RG VARCHAR(50),
	DATANASCIMENTO DATE not null,
	ENDERECO VARCHAR(255) not null,
	CIDADE VARCHAR(20) not null,
	ESTADO VARCHAR(20) not null,
	CEP VARCHAR(9) not null,
	FUNCAO VARCHAR(20) not null,
	SALARIO DECIMAL(15),
	FILIAL VARCHAR(50) not null,
	USUARIO VARCHAR(50) not null,
	SENHA VARCHAR(255) not null
)