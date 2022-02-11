CREATE TABLE Ej12_Vencimiento (
	id int NOT NULL,
	Fvto varchar(50),
	PRIMARY KEY (id)
	);

CREATE TABLE Ej12_Usuarios (
	id int NOT NULL,
	idNac int NOT NULL,
	Name varchar(50),
	Age int,
	PRIMARY KEY (id),
	);

INSERT INTO Ej12_Vencimiento (id, Fvto)
	VALUES 
		(1, '1/10/23'),
		(2, '22/5/25'),
		(5, '22/1/23'),
		(6, '15/6/28');

INSERT INTO Ej12_Usuarios (id, idNac, Name, Age)
	VALUES 
		(1, 1, 'Bob', 21),
		(2, 1, 'Sam', 19),
		(3, 2, 'Jill', 18),
		(4, 3, 'Jim', 21),
		(5, 4, 'Sally', 19),
		(6, 2, 'Jess', 20),
		(7, 3, 'Will', 21);	

-- Devuelve la tabla usuarios pero con la fecha de vencimiento correspondiente, --
--	en caso de no tener, deja la celda den blanco --
SELECT Ej12_Usuarios.id, Name, Age, ISNULL(Ej12_Vencimiento.Fvto, '') AS Fvto FROM Ej12_Usuarios
FULL JOIN Ej12_Vencimiento
ON Ej12_Usuarios.id = Ej12_Vencimiento.id

DROP TABLE Ej12_Vencimiento

DROP TABLE Ej12_Usuarios