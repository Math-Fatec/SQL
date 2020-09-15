CREATE DATABASE Academia
USE Academia

CREATE TABLE Aluno(
ID_Aluno INT IDENTITY NOT NULL,
Nome VARCHAR(50))

CREATE TABLE Atividade(
ID INT IDENTITY NOT NULL,
descriçao VARCHAR(100),
IMC FLOAT)

CREATE TABLE Atividadealuno(
ID_Aluno INT IDENTITY NOT NULL,
altura FLOAT,
peso INT,
IMC FLOAT,
ID INT IDENTITY NOT NULL)

INSERT INTO Atividade
  ( [ID],
    [descriçao],
    [IMC] )
VALUES
   ('1', '2', '3', '4', '5',
   'Corrida + Step ', 'Biceps + Costas + Pernas', 'Esteira + Biceps + Costas + Perna', 'Bicicleta + Biceps + Costas + Pernas', 'Esteira + Bicicleta',
   '18.5', '24.9', '29.9', '34.9', '39.9')

SELECT IMC FROM Atividade

SELECT IMC FROM Atividdadealuno

USE Academia
GO
CREATE PROCEDURE Imc
 (@IMC FLOAT)
AS
SELECT IMC
FROM Atividade, Atividadealuno
WHERE IMC > 40

 CREATE PROCEDURE sp_alunoatividades
  (@ID_Aluno INT)
 AS
 SELECT ID_Aluno
 FROM Atividadealuno
 WHERE ID_Aluno = NULL

 CREATE PROCEDURE sp_alunoatividades1
  (@ID_Aluno INT)
  AS
  SELECT ID_Aluno
  FROM Atividadealuno
  WHERE VERIFY(ID_Aluno)