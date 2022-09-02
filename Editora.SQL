CREATE DATABASE Editora;
CREATE TABLE Livrarias(
    IDLivraria INT NOT NULL
);

CREATE TABLE NotasFiscais(
CodigoVendas INT NOT NULL,
DataVenda DATETIME NOT NULL,
IDLivraria INT NOT NULL
);

CREATE TABLE ItensNF(
    CodigoVenda INT NOT NULL,
    IDLivro INT NOT NULL,
    QtdeVendida INT NOT NULL
);

CREATE TABLE Livros(
    IDLivro INT NOT NULL,
    Autor VARCHAR(50) NOT NULL
);
