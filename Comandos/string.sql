USE sakila;
SELECT * FROM actor;

/*CHAR_LENGTH: Retorna a quantidade de caracteres de uma string na coluna determinada*/
SELECT first_name, CHAR_LENGTH(first_name) AS qtd_chars, last_name , CHAR_LENGTH(last_name) AS qtd_chars 
FROM actor
WHERE CHAR_LENGTH(first_name) > 7 AND CHAR_LENGTH(last_name) > 3;

# EXERCÍCIO 26
SELECT * FROM address;
SELECT address_id, address,postal_code FROM address;
SELECT address_id, address, postal_code, CHAR_LENGTH(postal_code) AS qtd_code FROM address ORDER BY address_id DESC;

/*CONCAT: Junta strings*/
USE empresa;
SELECT * FROM funcionarios;
SELECT CONCAT(nome, " tem ", idade, " anos de idade ") AS nome_e_idade
FROM funcionarios;

# EXERCÍCIO 27
USE sakila;
SELECT * FROM actor;
SELECT actor_id, CONCAT(first_name, " ", last_name) AS nome_completo 
FROM actor;

/*CONCAT_WS: Unifica dados através de uma chave*/
USE empresa;
SELECT CONCAT_WS(",",id, nome,idade) AS separados_por_virgula
FROM funcionarios;

/*FORMAT: formata números com casas decimais*/
USE sakila;
SELECT customer_id,amount, FORMAT(amount,1) FROM payment;

/*INSTR: Busca dentro da string uma chave e mostrar a posição dela*/
SELECT email, INSTR(email,"@") FROM customer;

/*LCASE: Transforma o texto em letras minúsculas*/
SELECT first_name, last_name,LCASE( CONCAT(first_name, " ", last_name)) AS nome_completo FROM customer;

/*LEFT: Extrai uma quantidade de caracteres de uma string*/
SELECT title, LEFT(title, 8) FROM film WHERE film_id = 1;

# Exercício 28
SELECT * FROM address;
SELECT address_id, last_update, LEFT(last_update, 10) AS "Data" 
FROM address 
WHERE address_id > 150;

/*REPLACE: Troca uma string por outra*/
SELECT name FROM category;
SELECT REPLACE(name,"Action","Action & Adventure") AS name FROM category;

# Exercício 29
SELECT * FROM customer;
SELECT REPLACE(first_name,"MARY","Mary") AS nome,REPLACE(last_name,"SMITH","Smith" ) AS sobrenome FROM customer WHERE last_name = "SMITH";

/*RIGHT:*/
SELECT RIGHT(last_update,8) AS Horário FROM category;

/*SUBSTR: Pega um dado com índice de ínicio e fim, com três parâmetros*/
SELECT last_update, SUBSTR(last_update,1,4) FROM actor;

/*UCASE: Transforma as letras em maiúsculas*/
SELECT UCASE(description) FROM film;

# Exercício 30
SELECT * FROM country;
SELECT country_id, country, UCASE(country) AS Países FROM country;
