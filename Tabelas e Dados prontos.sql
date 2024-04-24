
CREATE TABLE Fornecedor(
	idFornecedor SERIAL NOT NULL,
	Nome VARCHAR(100),
	Endereco VARCHAR(150),
	CONSTRAINT pk_fornecedor PRIMARY KEY(idFornecedor)
)

INSERT INTO Fornecedor(Nome, Endereco) VALUES ('Honda', 'Um endereço qualquer, 85')
INSERT INTO Fornecedor(Nome, Endereco) VALUES ('Toyota', 'No Japão, 6145')
INSERT INTO Fornecedor(Nome, Endereco) VALUES ('BMW', 'Em um lugar luxuoso, 5158')
INSERT INTO Fornecedor(Nome, Endereco) VALUES ('Subaru', 'Em algum lugar por aí, 1548')



CREATE TABLE Vendedor(
	idVendedor SERIAL NOT NULL,
	Nome VARCHAR(100),
	CONSTRAINT pk_vendedor PRIMARY KEY(idVendedor)
)

INSERT INTO Vendedor(Nome) VALUES ('Gabriel Davila')
INSERT INTO Vendedor(Nome) VALUES ('Gustavo S')
INSERT INTO Vendedor(Nome) VALUES ('Julio Ribeiro')



CREATE TABLE Cliente(
	idCliente SERIAL NOT NULL,
	Nome VARCHAR(100),
	Telefone VARCHAR(11),
	CONSTRAINT pk_cliente PRIMARY KEY(idCliente),
)

INSERT INTO Cliente(Nome, Telefone) VAlUES ('Gabriel Marchesan', 51123456789)
INSERT INTO Cliente(Nome, Telefone) VAlUES ('Sergio Silva', 51987654321)
INSERT INTO Cliente(Nome, Telefone) VAlUES ('Michel Jackson', 214365879)
INSERT INTO Cliente(Nome, Telefone) VAlUES ('Fátima Bernardes', 20217365879)
INSERT INTO Cliente(Nome, Telefone) VAlUES ('Sofia Muller', 78541629807)
INSERT INTO Cliente(Nome, Telefone) VAlUES ('Cris Bumbstead', 78541629807)


CREATE TABLE Financiamento(
	idFinanciamento SERIAL NOT NULL,
	ValorTotal DECIMAL,
	ValorParcela DECIMAL,
	idCliente INT NOT NULL,
	CONSTRAINT pk_financiamento PRIMARY KEY(idFinanciamento),
	CONSTRAINT fk_cliente FOREIGN KEY(idCliente) REFERENCES Cliente(idCliente)
)

INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (600000, 8571.42, 1)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (200000, 3333.33, 6)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (120000, 2000, 5)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (400000, 5000, 2)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (600000, 8571.42, 1)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (135000, 2250, 2)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (140000, 2333.33, 1)


CREATE TABLE Veiculo(
	idVeiculo SERIAL NOT NULL,
	Marca VARCHAR(100),
	Modelo VARCHAR(100),
	Valor DECIMAL,
	idFornecedor INT NOT NULL,
	CONSTRAINT pk_veiculo PRIMARY KEY(idVeiculo),
	CONSTRAINT fk_fornecedor FOREIGN KEY(idFornecedor) REFERENCES Fornecedor(idFornecedor),
)

INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('Honda', 'Civic Type-R', 450000, 1)
INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('Subaru', 'Subaru WRX', 80000, 4)
INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('BMW', '320I', 150000, 3)
INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('Toyota', 'Corolla', 120000, 2)
INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('BMW', 'M3 Competition', 300000, 3)
INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('Honda', 'Accord', 90000, 1)
INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('Toyota', 'Corolla Cross', 180000, 2)
INSERT INTO Veiculo(Marca, Modelo, Valor, idFornecedor) VALUES ('Subaru', 'Subaru XV', 250000, 4)


CREATE TABLE Seguro (
	idSeguro SERIAL NOT NULL,
	Tipo VARCHAR(150),
	Valor DECIMAL NOT NULL,
	Duracao INT,
	idCliente INT NOT NULL,
	CONSTRAINT pk_seguro PRIMARY KEY (idSeguro),
	CONSTRAINT fk_cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
)

INSERT INTO Seguro (Tipo, Valor, Duracao, idCliente) VALUES ('Quebra e roubo', 10000, 18, 4)
INSERT INTO Seguro (Tipo, Valor, Duracao, idCliente) VALUES ('Quebra', 8000, 12, 5)
INSERT INTO Seguro (Tipo, Valor, Duracao, idCliente) VALUES ('Roubo', 7500, 12, 2)
INSERT INTO Seguro (Tipo, Valor, Duracao, idCliente) VALUES ('Quebra, roubo', 25000, 24,7)
INSERT INTO Seguro (Tipo, Valor, Duracao, idCliente) VALUES ('Quebra e roubo', 16000, 12, 3)
INSERT INTO Seguro (Tipo, Valor, Duracao, idCliente) VALUES ('Quebra', 12000, 12, 1)
INSERT INTO Seguro (Tipo, Valor, Duracao, idCliente) VALUES ('Quebra', 14000, 12, 1)
Select * from Seguro



CREATE TABLE Compra(
	idCompra SERIAL NOT NULL,
	idCliente SERIAL NOT NULL,
	idVeiculo INT NOT NULL,
	idVendedor INT NOT NULL,
	dataCompra INT,
	CONSTRAINT pk_compra PRIMARY KEY (idCompra),
	CONSTRAINT fk_cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
	CONSTRAINT fk_veiculo FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo),
	CONSTRAINT fk_vendedor FOREIGN KEY (idVendedor) REFERENCES Vendedor(idVendedor)	
)

INSERT INTO Compra(idCliente, idVeiculo, idVendedor, dataCompra) VALUES (1, 9, 3, 1542022)
INSERT INTO Compra(idCliente, idVeiculo, idVendedor, dataCompra) VALUES (6, 12, 2, 1792018)
INSERT INTO Compra(idCliente, idVeiculo, idVendedor, dataCompra) VALUES (5, 10, 1, 13122020)
INSERT INTO Compra(idCliente, idVeiculo, idVendedor, dataCompra) VALUES (2, 11, 1,3052021)
INSERT INTO Compra(idCliente, idVeiculo, idVendedor, dataCompra) VALUES (1, 14, 3,23082024)
INSERT INTO Compra(idCliente, idVeiculo, idVendedor, dataCompra) VALUES (1, 11, 2, 09062018)
INSERT INTO Compra(idCliente, idVeiculo, idVendedor, dataCompra) VALUES (2, 9, 3, 17072023)

