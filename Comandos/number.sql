/*CEIL: Arredonda para acima os números com casas decimais */
USE sakila;
SELECT amount, CEIL(amount) AS Arrendondado FROM payment;

/*COUNT: Conta o números de ocorrências de uma determina coluna*/
SELECT COUNT(*) FROM payment;

# EXERCÍCIO 31
SELECT * FROM customer;
SELECT COUNT(customer_id) AS Clientes_cadastrados FROM customer;

/*FLOOR: Arredonda para baixo*/
SELECT amount FROM payment;
SELECT amount, CEIL(amount) AS para_cima,  FLOOR(amount) AS para_baixo FROM payment;

/*MAX: Retorna o maior valor de uma coluna*/
SELECT amount FROM payment;
SELECT MAX(amount) AS maior_pagamento FROM payment;

/*MIN: Retorna o menor valor de uma coluna*/
SELECT amount FROM payment;
SELECT MAX(amount) AS maior_pagamento, MIN(amount) AS menor_pagamento FROM payment;

# EXERCÍCIO 32
USE employees;
SELECT * FROM salaries;
SELECT MAX(salary) AS maior_salario, MIN(salary) AS menor_salario FROM salaries;

/*SUM: Retorna a soma dos valores da tabela*/
SELECT * FROM salaries;
SELECT SUM(salary)AS soma_salario FROM salaries WHERE emp_no = "10001";

