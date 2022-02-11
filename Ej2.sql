CREATE TABLE Ej2 (
	Division_id int NOT NULL,
	Year int,
	Renueve int,
	);

INSERT INTO Ej2 (Division_id, Year, Renueve)
	VALUES 
		(1, 2018, 60),
		(1, 2021, 40),
		(1, 2020, 70),
		(2, 2021, -10),
		(3, 2018, 20),
		(3, 2016, 40),
		(4, 2021, 50);

SELECT Division_id FROM Ej2
WHERE Year = 2021 AND Renueve > 0

DROP TABLE Ej2