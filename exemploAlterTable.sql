
Setting environment for using XAMPP for Windows.
Laboratorio-Info@DESKTOP-GUUJ6NS c:\xampp
# mysql -h localhost -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> DROP DATABASE IF EXISTS megafarma;
Query OK, 0 rows affected, 1 warning (0.000 sec)

MariaDB [(none)]> CREATE DATABASE IF NOT EXISTS megafarma;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> USE megafarma;
Database changed
MariaDB [megafarma]> CREATE TABLE Clientes(
    -> NomeCliente VARCHAR(30) NOT NULL,
    -> CPFCliente VARCHAR(14) NOT NULL,
    -> CorFavorita VARCHAR(2) NOT NULL
    -> );
Query OK, 0 rows affected (0.017 sec)

MariaDB [megafarma]> DROP TABLE Clientes
    -> ;
Query OK, 0 rows affected (0.036 sec)

MariaDB [megafarma]> CREATE TABLE Clientes(
    -> NomeCliente VARCHAR(30) NOT NULL,
    -> CPFCliente VARCHAR(14) NOT NULL,
    -> CorFavorita VARCHAR(20) NOT NULL
    -> );
Query OK, 0 rows affected (0.016 sec)

MariaDB [megafarma]> CREATE TABLE Pedidos (
    -> IDVenda INT NOT NULL PRIMARY KEY,
    -> DataDoBagulho DATETIME NOT NULL,
    -> IDCliente INT NOT NULL
    -> );
Query OK, 0 rows affected (0.023 sec)

MariaDB [megafarma]> DESC Clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| CorFavorita | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.008 sec)

MariaDB [megafarma]> ALTER TABLE clientes
    -> ADD COLUMN IDCliente INT NOT NULL FIRST;
Query OK, 0 rows affected (0.015 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC Clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   |     | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| CorFavorita | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE clientes
    -> ADD COLUMN Endereco VARCHAR(10) NULL AFTER CPFClientes;
ERROR 1054 (42S22): Unknown column 'CPFClientes' in 'clientes'
MariaDB [megafarma]> ALTER TABLE clientes
    -> ADD COLUMN Endereco VARCHAR(10) NULL AFTER CPFCliente;
Query OK, 0 rows affected (0.015 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC Clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   |     | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| Endereco    | varchar(10) | YES  |     | NULL    |       |
| CorFavorita | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE clientes
    -> MODIFY COLUMN Endereco VARCHAR(50) NOT NULL;
Query OK, 0 rows affected (0.037 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC Clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   |     | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| Endereco    | varchar(50) | NO   |     | NULL    |       |
| CorFavorita | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE clientes
    -> MODIFY COLUMN CorFavorita TINYINT NOT NULL;
Query OK, 0 rows affected (0.045 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC Clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   |     | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| Endereco    | varchar(50) | NO   |     | NULL    |       |
| CorFavorita | tinyint(4)  | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.015 sec)

MariaDB [megafarma]> DESC pedidos;
+---------------+----------+------+-----+---------+-------+
| Field         | Type     | Null | Key | Default | Extra |
+---------------+----------+------+-----+---------+-------+
| IDVenda       | int(11)  | NO   | PRI | NULL    |       |
| DataDoBagulho | datetime | NO   |     | NULL    |       |
| IDCliente     | int(11)  | NO   |     | NULL    |       |
+---------------+----------+------+-----+---------+-------+
3 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE pedidos
    -> CHANGE COLUMN DataDoBagulho DataVenda DATETIME NOT NULL;
Query OK, 0 rows affected (0.015 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC pedidos;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| IDVenda   | int(11)  | NO   | PRI | NULL    |       |
| DataVenda | datetime | NO   |     | NULL    |       |
| IDCliente | int(11)  | NO   |     | NULL    |       |
+-----------+----------+------+-----+---------+-------+
3 rows in set (0.013 sec)

MariaDB [megafarma]> ALTER TABLE pedidos
    -> RENAME TO vendas;
Query OK, 0 rows affected (0.014 sec)

MariaDB [megafarma]> DESC vendas;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| IDVenda   | int(11)  | NO   | PRI | NULL    |       |
| DataVenda | datetime | NO   |     | NULL    |       |
| IDCliente | int(11)  | NO   |     | NULL    |       |
+-----------+----------+------+-----+---------+-------+
3 rows in set (0.015 sec)

MariaDB [megafarma]> DESC clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   |     | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| Endereco    | varchar(50) | NO   |     | NULL    |       |
| CorFavorita | tinyint(4)  | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE clientes
    -> DROP COLUMN CorFavorita;
Query OK, 0 rows affected (0.015 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   |     | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| Endereco    | varchar(50) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE clientes
    -> ADD CONSTRAINT pk_clientes PRIMARY KEY (IDCliente);
Query OK, 0 rows affected, 1 warning (0.037 sec)
Records: 0  Duplicates: 0  Warnings: 1

MariaDB [megafarma]> DESC clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   | PRI | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   |     | NULL    |       |
| Endereco    | varchar(50) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.013 sec)

MariaDB [megafarma]> DESC vendas;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| IDVenda   | int(11)  | NO   | PRI | NULL    |       |
| DataVenda | datetime | NO   |     | NULL    |       |
| IDCliente | int(11)  | NO   |     | NULL    |       |
+-----------+----------+------+-----+---------+-------+
3 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE vendas
    -> ADD CONSTRAINT fk_vendas_clientes FOREIGN KEY (IDClinete)
    -> REFERENCES clientes (IDCliente);
ERROR 1072 (42000): Key column 'IDClinete' doesn't exist in table
MariaDB [megafarma]> ALTER TABLE vendas
    -> ADD CONSTRAINT fk_vendas_clientes FOREIGN KEY (IDCliente)
    -> REFERENCES clientes (IDCliente);
Query OK, 0 rows affected (0.047 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC vendas;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| IDVenda   | int(11)  | NO   | PRI | NULL    |       |
| DataVenda | datetime | NO   |     | NULL    |       |
| IDCliente | int(11)  | NO   | MUL | NULL    |       |
+-----------+----------+------+-----+---------+-------+
3 rows in set (0.014 sec)

MariaDB [megafarma]> ALTER TABLE clientes
    -> ADD COLUMN Bairro VARCHAR(30) NOT NULL,
    -> ADD COLUMN Cidade VARCHAR(40) NOT NULL,
    -> ADD COLUMN Estado CHAR(2) NOT NULL,
    -> ADD CONSTRAINT uk_clientes UNIQUE KEY (CPFCliente);
Query OK, 0 rows affected (0.047 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [megafarma]> DESC clientes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDCliente   | int(11)     | NO   | PRI | NULL    |       |
| NomeCliente | varchar(30) | NO   |     | NULL    |       |
| CPFCliente  | varchar(14) | NO   | UNI | NULL    |       |
| Endereco    | varchar(50) | NO   |     | NULL    |       |
| Bairro      | varchar(30) | NO   |     | NULL    |       |
| Cidade      | varchar(40) | NO   |     | NULL    |       |
| Estado      | char(2)     | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.006 sec)

MariaDB [megafarma]> DROP TABLE editora;
ERROR 1051 (42S02): Unknown table 'megafarma.editora'
MariaDB [megafarma]> exit
Bye