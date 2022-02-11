CREATE TABLE Ej4 (
	id int NOT NULL,
	value int,
	);

INSERT INTO Ej4 (id, value)
	VALUES 
		(1, 4),
		(2, 11),
		(3, 57),
		(4, 24),
		(5, 47);

-- Devuelve si los números de la columna value son Par o Impar --		
SELECT IIF((value % 2) = 0, 'Par', 'Impar') as Paridad FROM Ej4

DROP TABLE Ej4