CREATE TABLE Ej7 (
	id int NOT NULL,
	Name varchar(50),
	Amount_Sold int,
	);

INSERT INTO Ej7 (id, Name, Amount_Sold)
	VALUES 
		(1, 'Cup', 11),
		(2, 'Saucer', 22),
		(3, 'Plate', 46),
		(4, 'fork', 34),
		(5, 'Spoon', 45),
		(6, 'Knife', 78),
		(7, 'Mug', 23),
		(8, 'Glass', 64),
		(9, 'Tumbler', 24);

-- Devuelve los 5 articulos más vendidos --
SELECT TOP 5 (Amount_Sold) FROM Ej7
ORDER BY Amount_Sold desc

DROP TABLE Ej7