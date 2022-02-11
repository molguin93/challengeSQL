
CREATE TABLE Ej9 (
	id int NOT NULL,
	Name varchar(50),
	Age int,
	);

INSERT INTO Ej9 (id, Name, Age)
	VALUES 
		(1, 'Bob', 21),
		(2, 'Sam', 19),
		(3, 'Jill', 18),
		(4, 'Jim', 21),
		(5, 'Sally', 19),
		(6, 'Jess', 20),
		(7, 'Will', 21);	

-- Devuelve las edades únicas --
SELECT DISTINCT Age FROM Ej9		

DROP TABLE Ej9