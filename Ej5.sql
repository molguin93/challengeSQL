CREATE TABLE Ej5 (
	id int NOT NULL,
	Name varchar(50),
	Age int,
	);

INSERT INTO Ej5 (id, Name, Age)
	VALUES 
		(1, 'Bob', 21),
		(2, 'Sam', 19),
		(3, 'Jill', 18),
		(4, 'Jim', 21),
		(5, 'Sally', 19),
		(6, 'Jess', 20),
		(7, 'Will', 21);	

-- Devuelve la cantidad de personas que tienen la misma edad --
SELECT Age, COUNT(id) as Contar FROM Ej5				
GROUP BY Age

DROP TABLE Ej5