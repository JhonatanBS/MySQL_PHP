CREATE DATABASE cadastro;
USE cadastro;
CREATE TABLE pessoas(nome VARCHAR(100), rg VARCHAR(7),cpf VARCHAR(11), limite INT(10));
INSERT INTO pessoas(nome,rg,cpf,limite) VALUES ("Paulo", "1238741","98343455685",6000);
SELECT * FROM pessoas;
SELECT nome, limite FROM pessoas;
INSERT INTO pessoas VALUES("Maria", "3216544", "65412398747", 70000);
SELECT * FROM pessoas WHERE nome = "Jhonatan";
ALTER TABLE pessoas DROP COLUMN divida ;
UPDATE pessoas SET limite = 1000 WHERE nome = "João";
SET SQL_SAFE_UPDATES = 0;
DELETE FROM pessoas WHERE nome = "João";
DELETE FROM pessoas WHERE limite > 2000;

SELECT * FROM employees.titles;
SELECT * FROM titles WHERE NOT title = "Staff" ;
SELECT * FROM salaries ORDER BY salary DESC;
SELECT * FROM titles ORDER BY title ASC LIMIT 15;
SELECT * FROM departments ORDER BY dept_name ASC LIMIT 5;
SELECT * FROM titles;
SELECT * FROM titles ORDER BY title LIMIT 5;
SELECT * FROM salaries;
SELECT MIN(salary) AS maior_salario FROM salaries ;
SELECT MAX(salary) AS maior_salario FROM salaries ;
SELECT salary FROM salaries ORDER BY salary DESC LIMIT 1;
SELECT COUNT(*) AS mulheres FROM employees WHERE gender = "F";

SELECT * FROM salaries;
SELECT AVG(salary) AS salarios FROM salaries WHERE salary > 100000;
SELECT SUM(salary) AS salarios FROM salaries WHERE salary > 100000;/**/

SELECT * FROM employees;
SELECT * FROM titles;
/*LIKE:Filtra todos os nomes a partir de um chave de palavras*/
SELECT * FROM employees WHERE first_name LIKE "%be%" AND gender = "F";
SELECT * FROM titles WHERE title LIKE "%Engineer%";

/*IN: Retorna um conjunto de Valores*/
SELECT *FROM dept_emp;
SELECT * FROM dept_emp WHERE dept_no IN("d004","d005","d006") ORDER BY 	dept_no DESC;
SELECT * FROM employees;
SELECT * FROM employees WHERE last_name IN("Facello", "Peac");

/*BETWEEN: Retorna um valor dentro de um intervalo de começo e fim*/
SELECT * FROM dept_emp;
SELECT * FROM dept_emp WHERE dept_no BETWEEN "d003" AND "d005" ORDER BY dept_no DESC;
SELECT * FROM salaries;
SELECT * FROM salaries WHERE salary BETWEEN 125000 AND 175000 ORDER BY salary DESC;

/*AS: Renomeia colunas*/
SELECT * FROM salaries;
SELECT SUM(salary) AS soma_salarios FROM salaries;