SELECT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS]

-- A DISTINCT vai consolidar todos os registros que possuem uma combina��o igual, ou seja, quem tem valores iguais, em vez de aparecer N vezes, vai aparecer uma vez s�.
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS]

SELECT DISTINCT EMBALAGEM, TAMANHO, SABOR FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Laranja'

SELECT DISTINCT EMBALAGEM, TAMANHO, SABOR FROM [TABELA DE PRODUTOS]






-- Quantos bairros diferentes da cidade do Rio de Janeiro possuem clientes?
SELECT DISTINCT [BAIRRO] FROM [SUCOS_VENDAS].[dbo].[TABELA DE CLIENTES] WHERE CIDADE = 'Rio de Janeiro'