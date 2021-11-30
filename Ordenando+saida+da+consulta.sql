SELECT * FROM [dbo].[TABELA DE PRODUTOS]

-- ORDENA DE FORMA NATURAL DECRECENTE PELO PRECO
SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PRE�O DE LISTA]

-- ORDENA DO MAIOR PRA MENOR
SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PRE�O DE LISTA] DESC

SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [NOME DO PRODUTO]

SELECT [EMBALAGEM], [NOME DO PRODUTO] FROM [TABELA DE PRODUTOS] 
ORDER BY [EMBALAGEM], [NOME DO PRODUTO]

SELECT [EMBALAGEM], [NOME DO PRODUTO] FROM [TABELA DE PRODUTOS] 
ORDER BY [EMBALAGEM] DESC, [NOME DO PRODUTO] ASC

--Qual foi a maior venda do produto "Linha Refrescante - 1 Litro - Morango/Lim�o", em quantidade? (Obtenha este resultado usando 2 SQLs).


--Primeiro, vamos buscar o c�digo do produto "Linha Refrescante - 1 Litro - Morango/Lim�o":
SELECT * FROM [TABELA DE PRODUTOS] 
WHERE [NOME DO PRODUTO] = 'Linha Refrescante - 1 Litro - Morango/Lim�o'

--Com esta consulta, obtemos o resultado do c�digo deste produto: '1101035'. E com esta informa��o, fazemos a consulta para achar a maior quantidade vendida deste produto:
SELECT * FROM [ITENS NOTAS FISCAIS]
WHERE [CODIGO DO PRODUTO] = '1101035'
ORDER BY QUANTIDADE DESC