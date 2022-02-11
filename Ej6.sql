CREATE TABLE Ej6 (
	id int NOT NULL,
	Name varchar(50),
	);

INSERT INTO Ej6 (id, Name)
	VALUES 
		(1, 'Bob'),
		(2, 'Sam'),
		(3, 'Jill'),
		(4, 'Jim'),
		(5, 'Sally'),
		(6, 'Jess'),
		(7, 'Will');	

-- Devuelve un saludo personalizado tomando el nombre de la columna Name --
SELECT CONCAT('¡Hola ', Name, '! ¿Como estas hoy?') as Saludo FROM Ej6				

DROP TABLE Ej6