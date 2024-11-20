CREATE TABLE Pessoa (
    idPessoa INT IDENTITY(1,1) PRIMARY KEY,
    nome NVARCHAR(255),
    logradouro NVARCHAR(255),
    cidade NVARCHAR(255),
    estado CHAR(2),
    telefone NVARCHAR(255),
    email NVARCHAR(255)
);

CREATE TABLE Produto (
    idProduto INT IDENTITY(1,1) PRIMARY KEY,
    nome NVARCHAR(255),
    quantidade INT,
    precoVenda NUMERIC
);

CREATE TABLE Usuario (
    idUsuario INT IDENTITY(1,1) PRIMARY KEY,
    login NVARCHAR(255),
    senha NVARCHAR(255)
);

CREATE TABLE PessoaFisica (
    cpf NVARCHAR(11) PRIMARY KEY,
    idPessoa INT FOREIGN KEY REFERENCES Pessoa(idPessoa)
);

CREATE TABLE PessoaJuridica (
    cnpj NVARCHAR(14) PRIMARY KEY,
    idPessoa INT FOREIGN KEY REFERENCES Pessoa(idPessoa)
);

CREATE TABLE Movimento (
    idMovimento INT IDENTITY(1,1) PRIMARY KEY,
    idUsuario INT FOREIGN KEY REFERENCES Usuario(idUsuario),
    idPessoa INT FOREIGN KEY REFERENCES Pessoa(idPessoa),
    idProduto INT FOREIGN KEY REFERENCES Produto(idProduto),
    quantidade INT,
    tipo CHAR(1),
    valorUnitario FLOAT
);
