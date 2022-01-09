USE sakila;
/*ONE TO ONE: Liga um registro a outro*/
CREATE DATABASE relacoes;
USE relacoes;

CREATE TABLE estudantes(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    turma VARCHAR(5)
);

SELECT * FROM estudantes;

CREATE TABLE contatos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telefone VARCHAR(20),
    estudante_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);

SELECT * FROM contatos;

INSERT INTO estudantes(nome, turma) VALUES("João", "101A");
INSERT INTO estudantes(nome, turma) VALUES("Maria", "221C");
INSERT INTO estudantes(nome, turma) VALUES("Paulo", "300I");

INSERT INTO contatos(telefone, estudante_id) VALUES("(61) 9999-7777",1);
INSERT INTO contatos(telefone, estudante_id) VALUES("(41) 3333-1254",2);

SELECT estudantes.nome, estudantes.turma, contatos.telefone FROM estudantes
JOIN contatos ON contatos.estudante_id = estudantes.id;

/*ONE TO MANY: Uma tabela que se tem vários relacionamentos, exemplo: Cliente X Pedido*/
CREATE TABLE clientes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE
);

SELECT * FROM clientes;

CREATE TABLE pedidos (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    qtd_itens INT(10),
    total FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

SELECT * FROM relacoes.pedidos;

INSERT INTO clientes(nome, data_nascimento) VALUES("Matheus", "1889-05-20");
INSERT INTO clientes(nome, data_nascimento) VALUES("Lucas", "1877-12-27");

INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(5,200.20,1);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(3,100.50,1);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(7,550.80,1);

-- Pedidos do Matheus
SELECT clientes.nome, pedidos.id AS pedidos_id 
FROM clientes 
JOIN pedidos ON pedidos.cliente_id = clientes.id 
WHERE clientes.id = 1;

INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(1, 185.55,2);

-- Pedidos do Lucas
SELECT clientes.nome, pedidos.id AS pedidos_id 
FROM clientes 
JOIN pedidos ON pedidos.cliente_id = clientes.id 
WHERE clientes.id = 2;

/*MANY TO MANY*: As duas tabelas tem múltiplas relacões entre si*/
USE relacoes;
CREATE TABLE materias (
   id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   nome VARCHAR(100)
);

CREATE TABLE estudante_materia(
   estudante_id INT NOT NULL,
   materia_id INT NOT NULL,
   FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
   FOREIGN KEY (materia_id) REFERENCES materias(id)
);

INSERT INTO materias(nome) VALUES("Matemática");
INSERT INTO materias(nome) VALUES("Português");
INSERT INTO materias(nome) VALUES("Física");

SELECT * FROM materias;

INSERT INTO estudantes(nome, turma) VALUES("Junior", "452j");
INSERT INTO estudantes(nome, turma) VALUES("Amanda", "205l");

SELECT * FROM estudantes;

INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(1,1);
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(1,2);
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(1,3);
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(2,1);
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(2,2);
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(2,3);
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(3,2);
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(4,3);

SELECT * FROM estudantes
JOIN estudante_materia ON estudante_materia.estudante_id = estudantes.id
AND estudante_materia.materia_id = 2;

SELECT * FROM estudante_materia;

SELECT estudantes.nome, estudante_materia.materia_id AS Química FROM estudantes
JOIN estudante_materia ON estudante_materia.estudante_id = estudantes.id
AND estudante_materia.materia_id = 2;