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

-- Devuelve el dia de la semana que fue la fecha ingresada --
EXEC SP_Semana '02/02/2022'

DROP PROCEDURE SP_Semana