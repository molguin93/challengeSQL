CREATE TABLE Ej11_Nacionalidad (
	id int NOT NULL,
	Descr varchar(50),
	PRIMARY KEY (id)
	);

CREATE TABLE Ej11_Usuarios (
	id int NOT NULL,
	idNac int NOT NULL,
	Name varchar(50),
	Age int,
	PRIMARY KEY (id),
	FOREIGN KEY (idNac) REFERENCES Ej11_Nacionalidad(id)
	);

INSERT INTO Ej11_Nacionalidad (id, Descr)
	VALUES 
		(1, 'Argentino'),
		(2, 'Italiano'),
		(3, 'Español'),
		(4, 'Alemán');

INSERT INTO Ej11_Usuarios (id, idNac, Name, Age)
	VALUES 
		(1, 1, 'Bob', 21),
		(2, 1, 'Sam', 19),
		(3, 2, 'Jill', 18),
		(4, 3, 'Jim', 21),
		(5, 4, 'Sally', 19),
		(6, 2, 'Jess', 20),
		(7, 3, 'Will', 21);	

-- Devuelve la tabla usuarios pero con la descripcion de la nacionalidad --
SELECT Ej11_Usuarios.id, Ej11_Nacionalidad.Descr AS DesNac, Name, Age FROM Ej11_Usuarios
INNER JOIN Ej11_Nacionalidad 
ON Ej11_Usuarios.idNac = Ej11_Nacionalidad.id 

DROP TABLE Ej11_Nacionalidad

DROP TABLE Ej11_Usuarios