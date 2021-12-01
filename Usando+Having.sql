-- A fun��o HAVING, ela � aplicada para que n�s possamos fazer um filtro sobre o resultado de um GROUP BY

SELECT * FROM [dbo].[TABELA DE CLIENTES]

SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO 
HAVING SUM([LIMITE DE CREDITO]) >= 850000

SELECT EMBALAGEM, SUM([PRE�O DE LISTA]) AS VALOR_TOTAL, MAX([PRE�O DE LISTA]) AS VALOR_MAXIMO, MIN([PRE�O DE LISTA]) AS VALOR_MINIMO
FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS PRECO_MAXIMO, MIN([PRE�O DE LISTA]) AS PRECO_MINIMO, SUM([PRE�O DE LISTA]) AS SOMA_PRECO
FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PRE�O DE LISTA]) <= 80

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]), MIN([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PRE�O DE LISTA]) <= 80 AND MAX([PRE�O DE LISTA]) >= 6


-- Quais s�o os clientes que fizeram mais de 2000 compras em 2016?
SELECT CPF, COUNT(*) AS COMPRAS
FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000