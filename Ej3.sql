CREATE TABLE Ej3 (
	Division_id int NOT NULL,
	Year int,
	);

INSERT INTO Ej3 (Division_id, Year)
	VALUES 
		(1, 1776),
		(2, 2001),
		(3, 1643),
		(4, 1865),
		(5, 1969);

-- Devuelve los siglos de cada año --		
SELECT (year + 99) / 100 as siglo FROM Ej3

DROP TABLE Ej3