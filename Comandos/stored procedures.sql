USE sakila;
SHOW PROCEDURE STATUS; -- Resgata os procedures --

/* DELIMIER: Delimita o comando*/
DELIMITER //

SELECT * FROM actor//
SELECT * FROM payment//

CREATE PROCEDURE fullName()
BEGIN
     SELECT CONCAT(actor.first_name, " ", actor.last_name) AS full_name FROM sakila;
END//     

CALL fullName()//

CREATE PROCEDURE selectAll()
BEGIN
     SELECT CONCAT(actor.first_name, " ", actor.last_name) AS full_name FROM sakila;
END// 

CALL selectAll()//

DROP PROCEDURE selectALL//

SHOW CREATE PROCEDURE fullName//

CREATE PROCEDURE empregadoAll()
BEGIN
    SELECT actor.first_name, language.name FROM actor AS nome
    JOIN language AS nacionalidade ON actor.actor_id = language.language_id;
END//

SHOW CREATE PROCEDURE empregadoAll;

CALL empregadoAll

DELIMITER $

CREATE PROCEDURE pagamentoAll(
    IN maioresSalarios INT
)
BEGIN
    SELECT payment.rental_id FROM payment WHERE payment.rental_id > maioresSalarios;
END$

DROP PROCEDURE pagamentoAll$
SHOW PROCEDURE STATUS;

CALL pagamentoAll(1000)




