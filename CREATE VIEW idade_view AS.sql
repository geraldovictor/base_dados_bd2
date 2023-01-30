CREATE VIEW idade_view AS
SELECT FLOOR(MONTHS_BETWEEN(SYSDATE, dtnascimento)/12) AS idade, 
       COUNT(*) as contagem
FROM cliente
GROUP BY FLOOR(MONTHS_BETWEEN(SYSDATE, dtnascimento)/12);