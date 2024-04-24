SELECT Veiculo.Modelo, Veiculo.Marca, Fornecedor.Nome FROM  Veiculo 
INNER JOIN Fornecedor
ON 	Veiculo.idFornecedor = Fornecedor.idFornecedor
WHERE Veiculo.Marca = 'Honda'

SELECT Compra.dataCompra, Cliente.nome, Vendedor.nome FROM Compra
INNER JOIN Cliente
ON Compra.idCliente = Cliente.idCliente
INNER JOIN Vendedor
ON Compra.idVendedor = Vendedor.idVendedor
WHERE Cliente.Nome = 'Gabriel Marchesan'

SELECT Financiamento.ValorParcela, Cliente.Nome FROM Financiamento
INNER JOIN Cliente
ON Financiamento.idCliente = Cliente.idCliente
WHERE Financiamento.idCliente = 1
GROUP BY Financiamento.ValorParcela, Cliente.Nome, Cliente.Telefone, Financiamento.ValorTotal
HAVING Financiamento.ValorTotal > 100000
ORDER BY Financiamento.ValorParcela


SELECT AVG(Seguro.Valor), Cliente.Nome FROM Seguro
INNER JOIN Cliente
ON Seguro.idCliente = Cliente.idCliente
WHERE Seguro.Tipo = 'Quebra'
GROUP BY Cliente.Nome, Seguro.Tipo
ORDER BY AVG(Seguro.Valor)


