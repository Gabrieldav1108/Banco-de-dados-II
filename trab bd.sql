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
	idVendedor INT NOT NULL,
	CONSTRAINT pk_cliente PRIMARY KEY(idCliente),
	CONSTRAINT fk_vendedor FOREIGN KEY(idVendedor) REFERENCES Vendedor(idVendedor)
)

INSERT INTO Cliente(Nome, Telefone, idVendedor) VAlUES ('Gabriel Marchesan', 51123456789, 2)
INSERT INTO Cliente(Nome, Telefone, idVendedor) VAlUES ('Sergio Silva', 51987654321, 1)
INSERT INTO Cliente(Nome, Telefone, idVendedor) VAlUES ('Michel Jackson', 214365879, 3)
INSERT INTO Cliente(Nome, Telefone, idVendedor) VAlUES ('Fátima Bernardes', 20217365879, 2)
INSERT INTO Cliente(Nome, Telefone, idVendedor) VAlUES ('Sofia Muller', 78541629807, 1)
INSERT INTO Cliente(Nome, Telefone, idVendedor) VAlUES ('Cris Bumbstead', 78541629807, 3)



CREATE TABLE Financiamento(
	idFinanciamento SERIAL NOT NULL,
	ValorTotal DECIMAL,
	ValorParcela DECIMAL,
	idCliente INT NOT NULL,
	CONSTRAINT pk_financiamento PRIMARY KEY(idFinanciamento),
	CONSTRAINT fk_cliente FOREIGN KEY(idCliente) REFERENCES Cliente(idCliente)
)

INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (100000, 1666.66, 1)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (130000, 1625, 6)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (80000, 1333.33, 5)
INSERT INTO Financiamento (ValorTotal, ValorParcela, idCliente) VAlUES (65000, 1083.33, 2)



CREATE TABLE Veiculo(
	idVeiculo SERIAL NOT NULL,
	Marca VARCHAR(100),
	Modelo VARCHAR(100),
	idFornecedor INT NOT NULL,
	idVendedor INT NOT NULL,
	CONSTRAINT pk_veiculo PRIMARY KEY(idVeiculo),
	CONSTRAINT fk_fornecedor FOREIGN KEY(idFornecedor) REFERENCES Fornecedor(idFornecedor),
	CONSTRAINT fk_vendedor FOREIGN KEY(idVendedor) REFERENCES Vendedor(idVendedor)
)

select * from Veiculo

INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('Honda', 'Civic Type-R', 1, 1)
INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('Subaru', 'Subaru WRX', 4, 3)
INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('BMW', '320I', 3, 1)
INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('Toyota', 'Corolla', 2, 2)
INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('BMW', 'M3 Competition', 3, 1)
INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('Honda', 'Accord', 1, 2)
INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('Toyota', 'Corolla Cross', 2, 3)
INSERT INTO Veiculo(Marca, Modelo, idFornecedor, idVendedor) VALUES ('Subaru', 'Subaru XV', 4, 2)


















