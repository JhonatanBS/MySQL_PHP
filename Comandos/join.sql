/*JOIN*/

/*INNER: Faz uma consulta com junção entre tabelas, verificando as colunas que são iguais*/
USE employees;
SELECT employees.first_name, employees.last_name, salaries.salary AS salario
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 120000
ORDER BY salaries.salary DESC;

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

/*EXERCÍCIO 22 DE INNER*/
SELECT employees.first_name, employees.gender, titles.title
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no;

/*LEFT: vai retornar todos os dados da tabela da esquerda e os necessários da direita*/
USE constraints;
SELECT * FROM pessoas;
SELECT pessoas.nome, enderecos.*
FROM pessoas
LEFT JOIN enderecos
ON pessoas.id = enderecos.pessoa_id;

USE employees;
SELECT employees.first_name, employees.last_name, salaries.salary AS salario
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

/*RIGHT: vai retornar todos os dados da tabela da direita e os necessários da esquerda*/

