CREATE TABLE Ej8 (
	id int NOT NULL,
	Name varchar(50),
	Country varchar(50),
	);

INSERT INTO Ej8 (id, Name, Country)
	VALUES 
		(1, 'Bob Smith', 'United States'),
		(2, 'Jim Jones', 'China'),
		(3, 'Sam White', 'Japan'),
		(4, 'Jess Black', 'Canada'),
		(5, 'Will Wilson', 'Germany'),
		(6, 'Wilson Scott', 'England'),
		(7, 'Scott Daniels', 'France'),
		(8, 'Daniel Jackson', 'Canada'),
		(9, 'Jack Johnson', 'United States');

-- Devuelve los ciudadanos que no sean de Canada y Estados Unidos --
SELECT * FROM Ej8
WHERE Ej8.Country != 'United States' AND  Ej8.Country != 'Canada'

DROP TABLE Ej8