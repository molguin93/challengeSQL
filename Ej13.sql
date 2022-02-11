CREATE TABLE Ej13 (
	id int NOT NULL,
	Name varchar(50),
	Age int,
	);

INSERT INTO Ej13 (id, Name, Age)
	VALUES 
		(1, 'Bob', 21),
		(2, 'Sam', 19),
		(3, 'Jill', 18),
		(4, 'Jim', 21),
		(5, 'Sally', 19),
		(6, 'Jess', 20),
		(7, 'Will', 21);	

-- Opcion 1: Stored Procedure que devuelve la cantidad de veces que se repite la edad que ingreso --
CREATE PROC SP_Cantidad
@edad int
	AS 
	BEGIN
		SELECT COUNT(Age) FROM Ej13 WHERE Age = @edad
	END

EXEC SP_Cantidad 21

DROP PROCEDURE SP_Cantidad

-- Opcion 2: Funcion que devuelve la cantidad de veces que se repite la edad que ingreso --
CREATE FUNCTION Cantidad (@edad int)
RETURNS int
AS
BEGIN
DECLARE @cant int
SET @cant = (SELECT COUNT(Age) FROM Ej13 WHERE Age = @edad)
RETURN @cant
END

SELECT dbo.Cantidad(21)

DROP FUNCTION Cantidad

DROP TABLE Ej13