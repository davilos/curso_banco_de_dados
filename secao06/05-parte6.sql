-- CURDATE()
SELECT CURDATE() AS 'Data Atual';

-- CURTIME()
SELECT CURTIME() AS 'Hora Atual';

-- CURRENT_TIME()
SELECT CURRENT_TIME() AS 'Hora Atual';

-- DATE_ADD(data, interval)
SELECT DATE_ADD(CURDATE(), INTERVAL 3 DAY) AS 'Data de Vencimento';

-- DATE_SUB(data, interval)
SELECT DATE_SUB(CURDATE(), INTERVAL 10 DAY) AS 'Data de matrícula';

-- DATEDIFF(data, interval)
SELECT DATEDIFF(CURDATE(), DATE_SUB(CURDATE(), INTERVAL 10 DAY)) AS 'Dias em Atraso';

-- DATE_FORMAT(date, '%d/%m/%Y')
SELECT DATE_FORMAT(CURDATE(), '%d/%M/%Y') AS 'Data Atual';

-- DAY_NAME(date) - Nome
SELECT DAYNAME(CURDATE()) AS 'Dia da Semana';

-- DAYOFMONTH(date)
SELECT DAYOFMONTH(CURDATE()) AS 'Dia do Mês';

-- DAYOFWEEK(date) - Número
SELECT DAYOFWEEK(CURDATE()) AS 'Dia da Semana';

-- DAYOFWEAR(date)
SELECT DAYOFYEAR(CURDATE()) AS 'Dia do Ano';

-- FROM_DAYS(num)
SELECT FROM_DAYS(780500) AS 'Data Real';

-- NOW()
SELECT NOW() AS 'Data/Hora Atual';

SELECT DATE_FORMAT(NOW(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

-- TIME(date)
SELECT TIME(CURRENT_TIMESTAMP()) AS 'Hora';

-- SEC_TO_TIME/TIME_TO_SEC
SELECT SEC_TO_TIME(2000) AS 'Tempo Total';

SELECT TIME_TO_SEC(TIME(NOW())) AS 'Em segundos';

-- HOUR/MINUTE/SECOND
SELECT HOUR(TIME(NOW())) AS Hora, 
	MINUTE(TIME(CURRENT_TIMESTAMP())) AS Minutos, 
    SECOND(TIME(NOW())) AS Segundos;

-- PERIOD_DIFF
SELECT PERIOD_DIFF(202212, 202209) AS 'Meses Restantes';

-- TIME_DIFF(date, date)
SELECT TIMEDIFF('12:35:34', TIME(NOW())) AS 'Diferença';

-- QUARTER
SELECT QUARTER('2022-09-18') AS 'Trimestre do ano';

-- WEEK
SELECT WEEK('2022-09-18') AS 'Semana do ano';

-- WEEKDAY
SELECT WEEKDAY('2022-09-18') AS 'Dia da semana';

-- YEAR/MONTH/DAY
SELECT YEAR('2022-09-18') AS 'Ano';

SELECT MONTH(NOW()) AS 'Mês';

SELECT DAY(NOW()) AS 'Dia';