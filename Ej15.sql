CREATE TABLE Ej15_Vencimiento (
	id int NOT NULL,
	Fvto varchar(50),
	PRIMARY KEY (id)
	);

CREATE TABLE Ej15_Usuarios (
	id int NOT NULL,
	idNac int NOT NULL,
	Name varchar(50),
	Age int,
	PRIMARY KEY (id),
	);

INSERT INTO Ej15_Vencimiento (id, Fvto)
	VALUES 
		(1, '1/10/23'),
		(2, '22/5/25'),
		(5, '22/1/23'),
		(6, '15/6/28');

INSERT INTO Ej15_Usuarios (id, idNac, Name, Age)
	VALUES 
		(1, 1, 'Bob', 21),
		(2, 1, 'Sam', 19),
		(3, 2, 'Jill', 18),
		(4, 3, 'Jim', 21),
		(5, 4, 'Sally', 19),
		(6, 2, 'Jess', 20),
		(7, 3, 'Will', 21);	


CREATE PROC SP_PersonaDelete
@id_Persona int
	AS 
	DECLARE @out int
	IF EXISTS (SELECT id FROM Ej15_Usuarios WHERE id = @id_Persona)
	BEGIN
		DELETE FROM Ej15_Usuarios WHERE id = @id_Persona
			IF EXISTS (SELECT id FROM Ej15_Vencimiento WHERE id = @id_Persona)
				DELETE FROM Ej15_Vencimiento WHERE id = @id_Persona
		SET @out = 0
		PRINT @out
	END
	ELSE
	BEGIN
		SET @out = -1
		PRINT @out
	END

-- Ejecuta el Stored Procedure que elimina según el numero de id que coloquemos --
-- Si el usuario existe y lo pudo borrar nos devuelve un 0, de lo contrario devuelve un -1 --
EXEC SP_PersonaDelete 1

SELECT * FROM Ej15_Usuarios
SELECT * FROM Ej15_Vencimiento

DROP PROCEDURE SP_PersonaDelete

DROP TABLE Ej15_Vencimiento

DROP TABLE Ej15_Usuarios