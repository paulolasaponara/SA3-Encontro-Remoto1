--comando para criar banco de dados
CREATE DATABASE uc9SA3PBE10

--comando para usar o banco de dados criado
USE uc9SA3PBE10

--comando para criar uma tabela
CREATE TABLE Usuarios(
Id INT PRIMARY KEY IDENTITY,
Email VARCHAR(50) UNIQUE NOT NULL,
Senha VARCHAR(50) NOT NULL
)

--comando para inserir usuarios na tabela
INSERT INTO Usuarios VALUES('lorenzo@gmail.com', 'admin1234')
INSERT INTO Usuarios VALUES('shirley@gmail.com', 'admin1234')
INSERT INTO Usuarios VALUES('paulo@gmail.com', 'admin1234')

--comando para consultar dados de uma tabela
SELECT * FROM Usuarios

--comando para consultar dados de uma tabela usando função de hashbytes
--nesse ex vamos fazer um hash de senha cadastrada
SELECT Email, HASHBYTES('MD2', Senha)AS Senha FROM Usuarios
SELECT Email, HASHBYTES('MD4', Senha)AS Senha FROM Usuarios
SELECT Email, HASHBYTES('MD5', Senha)AS Senha FROM Usuarios
SELECT Email, HASHBYTES('SHA', Senha)AS Senha FROM Usuarios
SELECT Email, HASHBYTES('SHA2_256', Senha)AS Senha FROM Usuarios
SELECT Email, HASHBYTES('SHA2_512', Senha)AS Senha FROM Usuarios

--comando para consultar com condicional
SELECT Email, HASHBYTES('SHA2_512', Senha)AS Senha FROM Usuarios WHERE Id = 1

--comando para consulta usando PWDEncrypt onde senhas iguais geram HASHs diferentes
SELECT Email, PWDENCRYPT(Senha) AS Senha FROM Usuarios