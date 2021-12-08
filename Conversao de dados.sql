
SELECT CONVERT(VARCHAR, GETDATE(), 101)

SELECT CONVERT(VARCHAR, GETDATE(), 113)

SELECT CONVERT(VARCHAR, GETDATE(), 130)

SELECT CONVERT(decimal(10,5), 193.57)

SELECT * FROM [TABELA DE PRODUTOS]

-- TENTO CONCATENAR O NOME DO PRODUTO VARCHAR COM UM SMALLMONEY PRECO DA LISTA AI VAI DA ERRO
SELECT 'O pre�o do produto ' + [NOME DO PRODUTO] + ' � ' +  [PRE�O DE LISTA] 
from [TABELA DE PRODUTOS]

-- JA AQUI DEU CERTO PQ ESTOU CONVERTENDO PRECO LISTA PARA UM VARCHAR
SELECT 'O pre�o do produto ' + [NOME DO PRODUTO] + ' � ' +  CONVERT(VARCHAR, [PRE�O DE LISTA]) 
from [TABELA DE PRODUTOS]

-- Queremos construir um SQL cujo resultado seja, para cada cliente: **"O cliente Jo�o da Silva faturou 120000 no ano de 2016".
SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PRE�O]))), ' no ano ', CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA FROM [NOTAS FISCAIS] NF -- DICA � FAZER O SELECT DA TABELA QUE SE RELACIONA COM AS OUTRAS 2 DO INNER JOIN
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
GROUP BY TC.NOME, YEAR(DATA)
HAVING YEAR(DATA) = 2016