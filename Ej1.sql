CREATE TABLE Ej1 (
	id int NOT NULL,
	value int,
	);

INSERT INTO Ej1(id, value)
	VALUES 
		(1,-56),
		(2,76),
		(3,-84),
		(4,96),
		(5,-47);

SELECT id, (value*(-1)) FROM Ej1  -- Devuelve los opuestos de la columna value --

DROP TABLE Ej1