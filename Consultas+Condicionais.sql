
-- traz sabor manga ou tamanho 700ml
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' OR [TAMANHO] = '700 ml' 

-- traz sabor manga que seja do tamanho de 700ml
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' AND [TAMANHO] = '700 ml' 

-- exclui o sabor manga que seja do tamanho de 700ml
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' AND [TAMANHO] = '700 ml')

-- exclui o sabor manha e os de tamanho 700ml
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' OR [TAMANHO] = '700 ml')

-- traz os manga e nenhum tamahno 700ml
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' AND NOT ( [TAMANHO] = '700 ml')

-- traz os sabores manga e laranja
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja')

-- traz os sabores manga ou laranha (mesma coisa da consulta acima)
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' OR [SABOR] ='Laranja'

-- exclui manga e laranja da consulta
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] NOT IN ('Manga', 'Laranja')

-- traz laranja e todos os outros e nao traz manga
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' OR [SABOR] ='Laranja')

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PREÇO DE LISTA] > 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PREÇO DE LISTA] BETWEEN 10 AND 13

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PREÇO DE LISTA] >= 10 AND [PREÇO DE LISTA] <= 13

SELECT *  FROM [ITENS NOTAS FISCAIS] 
WHERE [QUANTIDADE] > 60 AND [PREÇO] <= 3