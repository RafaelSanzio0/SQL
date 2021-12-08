
-- retorna o maior inteiro entre 12 ou 13
SELECT CEILING(12.333223)

-- retorna o menor inteiro entre 12 ou 13
SELECT FLOOR(12.333223)

-- retorna numero aleatorio
SELECT RAND()

-- retorna o numero arendondado
SELECT ROUND(12.33323323, 2)

SELECT * FROM [ITENS NOTAS FISCAIS]

SELECT  ROUND(([QUANTIDADE] * [PREÇO]),1) FROM [ITENS NOTAS FISCAIS]



-- Na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens, temos a quantidade e o faturamento. Calcule o valor do imposto pago no ano de 2016, arredondando para o menor inteiro.
SELECT YEAR(DATA) AS ANO, FLOOR(SUM(IMPOSTO * (QUANTIDADE * PREÇO))) AS IMPOSTO_2016
FROM [ITENS NOTAS FISCAIS] INF INNER JOIN
[NOTAS FISCAIS] NF ON INF.NUMERO = NF.NUMERO
GROUP BY YEAR(DATA)
HAVING YEAR(DATA) = 2016