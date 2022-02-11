-- Opcion 1: Funcion que devuelve el dia de la semana que fue la fecha ingresada --
CREATE FUNCTION Semana (@fecha date)
RETURNS varchar(10)
AS
BEGIN
	DECLARE @fetch date
	DECLARE @day varchar(10)
		SET @fetch = (SELECT CONVERT(date, @fecha))
		SET @fetch = (SELECT FORMAT(@fetch, 'dd/MM/yy')) 
	    SET @day = (SELECT DATENAME(WEEKDAY, @fetch))
RETURN @day
END

SELECT dbo.Semana('02/02/2022')

DROP FUNCTION Semana
 
-- Opcion 2: Stored Procedure que devuelve el dia de la semana que fue la fecha ingresada --
CREATE PROC SP_Semana
@fecha date
	AS
	DECLARE @fetch date
	DECLARE @fetch2 date
	BEGIN
		SET @fetch = (SELECT CONVERT(date, @fecha))
		SET @fetch2 = (SELECT FORMAT(@fetch, 'dd/MM/yy')) 
	    SELECT DATENAME(WEEKDAY, @fetch2)
	END

EXEC SP_Semana '02/02/2022'

DROP PROCEDURE SP_Semana
