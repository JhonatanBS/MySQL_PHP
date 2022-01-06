SHOW DATABASES;
USE sakila;

/*ADDDATE: Adiciona ou remove horas,dias, meses ou anos de uma data*/
SELECT last_update FROM actor;
SELECT last_update, ADDDATE(last_update, "5 DAYS") AS Adicionado_5_dias, ADDDATE(last_update, INTERVAL 2 MONTH), ADDDATE(last_update, INTERVAL -5 YEAR) FROM actor;

/*DATEDIFF: Calcula a diferença entre duas datas e retorna os dias*/
SELECT DATEDIFF( ADDDATE(last_update, "5 DAYS"),last_update) FROM actor;
SELECT DATEDIFF( ADDDATE(last_update, INTERVAL 1 YEAR),last_update) FROM actor;

/*ADDTIME: Adiciona ou remove um tempo de uma data*/
 SELECT * FROM actor;
 SELECT *, ADDTIME(last_update, " 7 05:00:00") FROM actor WHERE actor_id > 15;
 
 /*DATE_FORMAT: Formata uma data específica, exemplo: %d, %m ou %Y*/
 SELECT DATE_FORMAT(last_update, "%Y")AS ANO,
 DATE_FORMAT(last_update, "%d/%m/%Y")AS DATA_FORMATADA FROM actor;
 
 /*DAY: Retorna o dia da data utilizada na função*/
 SELECT last_update, DAY(last_update)AS DIAS, DAY(ADDDATE(last_update, "5 00:00:00")) FROM actor;
 
 /*DAYOFWEEK: Retorna o dia da semana determinada, retorna um número de 1 a 7*/
 SELECT last_update FROM actor;
 SELECT last_update, DAYOFWEEK(last_update)AS DIA_DA_SEMANA, DAYOFWEEK(ADDDATE(last_update, "2 DAYS")) FROM actor;
 
 /*DAYOFYEAR: Retorna o dia do ano entre 1 e 365*/
 SELECT last_update, DAYOFYEAR(last_update), DAYOFYEAR(ADDDATE(last_update, INTERVAL 3 MONTH)) FROM actor;
 
 /*WEEKOFYEAR: Retorna a semana do ano entre 1 e 42*/
 SELECT last_update, WEEKOFYEAR(last_update) AS SEMANA, WEEKOFYEAR(ADDDATE(last_update, INTERVAL 5 MONTH)) FROM actor;
 
 /*MONTH: Retorna o mês do ano em número entre 1 a 12*/
 SELECT last_update, MONTH(last_update),MONTH(ADDDATE(last_update, INTERVAL 5 MONTH)) FROM actor;
 
 /*YEAR: Retorna o ano em número*/
 SELECT last_update, YEAR(last_update) AS ANO, YEAR(ADDDATE(last_update, INTERVAL 7 YEAR)) FROM actor;