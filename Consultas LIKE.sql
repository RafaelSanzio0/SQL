SELECT * FROM [TABELA DE PRODUTOS]

-- traz na consulta todo mundo que tem litros no nome
SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE '%Litros%'

-- traz na consulta somente nomes que comecam com litros
SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE 'Litros%'

-- traz na consulta somente nomes que terminam com litros
SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE '%Litros'

-- traz na consulta todo mundo que contem litro no nome e seja do sabor laranja
SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE '%Litros%' AND [SABOR] = 'Laranja'





-- Quantos clientes possuem o último sobrenome Mattos?
SELECT * FROM [SUCOS_VENDAS].[dbo].[TABELA DE CLIENTES] WHERE [NOME] LIKE '%Mattos'


