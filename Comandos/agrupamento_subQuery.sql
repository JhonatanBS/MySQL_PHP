USE employees;

/*UNION: Seleciona e une colunas que possuem o mesmo nome, evitando duplicidade*/
SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp;

SELECT dept_no FROM departments;
SELECT dept_no FROM dept_emp;

INSERT INTO departments VALUE("d010", "SEO");

/*UNION ALL: Seleciona mais de uma tabela, e retorna valores duplicado*/
SELECT dept_no AS departamentos FROM  departments
UNION ALL SELECT dept_no FROM dept_emp;

/*GROUP BY: Retorna os grupos de forma organizada, fazendo agrupamentos*/
SELECT gender, COUNT(gender) AS "Qtd por gênero"
FROM employees
GROUP BY gender;

/*EXERCÍCIO 23*/
SELECT * FROM employees;
SELECT hire_date, COUNT(hire_date) AS "Contratados"
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;

/*HAVING: Se comporta igual ao WHERE, mas com o uso do GRUPO BY, deve usar o HAVING para filtrar dados*/
SELECT title, COUNT(title) AS "Titulos"
FROM titles
GROUP BY title
HAVING COUNT(title) > 100000;

/*EXERCÍCIO 24*/
SELECT hire_date, COUNT(hire_date) AS "Data_de_Contratação"
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) <= 50;

/*SUBQUERY: Um SELECT dentro de outro SELECT*/
SELECT emp_no, first_name, (
    SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees
ORDER BY emp_no DESC;

/*EXISTS: Verifica se existe algum registro em alguma subquery*/
SELECT emp_no, first_name, last_name,(
    SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees
WHERE EXISTS(
    SELECT salary
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
    HAVING SUM(salary) > 2000000
);

/*ANY: Vai retornar os resultados que recebem TRUE da subquery*/
SELECT first_name
FROM employees
WHERE emp_no = ANY (
    SELECT emp_no
    FROM salaries
    WHERE salary > 150000
);

-- Comentarios de uma linha

/*Comentário de varias linhas*/ 

/*Exercício 25*/
-- Criando uma tabela de Post
CREATE TABLE posts (
   -- Coluna de ID, com Auto incremento e chave Primária
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   -- COluna de Titulo, no maximo 255 caracteres
   titulo VARCHAR(255) NOT NULL,
   -- Coluna para o texto do Post
   corpo_do_post TEXT,
   -- Coluna de tags para o post
   tags VARCHAR(255)
);

SELECT * FROM posts;