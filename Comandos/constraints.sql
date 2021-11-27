/*UNIQUE: Não aceita valores duplicados, por ser único*/

/*NOT NULL: Não aceita valores nulos seja em tipo de dado*/

/*PRIMARY KEY: Ele referencia uma coluna como índice, geralmente usado no id das tabelas*/

/*AUTO_INCREMENT: Incrementa +1 no id*/
CREATE TABLE frutas(
     id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     nome VARCHAR(100)
);

SELECT * FROM frutas;

USE constraints;

INSERT INTO frutas(nome) VALUES("Maça");
SELECT * FROM frutas;
DELETE FROM frutas WHERE id = 3;
INSERT INTO frutas(nome) VALUES("Melão");
INSERT INTO frutas(nome) VALUES("Laranja");

/*FOREIGN KEY: Faz ligação entre tabelas */
DROP TABLE pessoas;
CREATE TABLE pessoas(
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   nome VARCHAR(100) NOT NULL,
   idade INT
);

CREATE TABLE enderecos(
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   rua VARCHAR(100),
   numero VARCHAR(10),
   pessoa_id INT NOT NULL,
   FOREIGN KEY (pessoa_id) REFERENCES pessoas(id)
);

SELECT * FROM pessoas;
SELECT * FROM enderecos;
INSERT INTO pessoas(nome, idade) VALUES("Maria", 20);
INSERT INTO enderecos(rua,numero,pessoa_id) VALUES("Rua velha", "10",1);

/*INDEX: Adiciona na tabela um índice  que facilita a busca, normalmente usada em tabelas que são muito usadas*/
CREATE INDEX index_nome /*Adiciona um INDEX*/
ON pessoas(nome);

DROP INDEX index_nome ON pessoas;/*Remove o INDEX*/

/*Exercício 21*/
CREATE DATABASE banco;
USE banco;
CREATE TABLE contas(
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   nome VARCHAR(100) NOT NULL,
   sobrenome VARCHAR(100) NOT NULL,
   saldo float,
   data_nascimento DATE
);

CREATE INDEX index_saldo
ON contas(saldo);

INSERT INTO contas(nome,sobrenome,saldo,data_nascimento) VALUES("Jhonatan", "Santos", 100000.50, "1998-02-14");
INSERT INTO contas(nome,sobrenome,saldo,data_nascimento) VALUES("Taynan", "Santos", 105400.50, "1997-02-04");
INSERT INTO contas(nome,sobrenome,saldo,data_nascimento) VALUES("Thiago", "Santos", 17770.50, "1990-07-24");

SELECT * FROM contas;


