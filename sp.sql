CREATE PROC S_paciente (
  @idpaciente int
)
AS 

SELECT *
FROM paciente
WHERE idpaciente = @idpaciente

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

EXEC S_paciente 7

ALTER PROC S_paciente (
  @idpaciente int
)
AS

SELECT apellido, nombre, idPais, observacion, 
  (SELECT * FROM Pais ps WHERE ps.idpais = pa.idpais) descPais
FROM paciente pa
WHERE idpaciente = @idpacente
  
DECLARE @ordenamiento CHAR(1) = 'A'

DECLARE @entero INT
SET @entero = NULL
SELECT ISNULL(@entero, 0) AS Valo

DECLARE @decimal DECIMAL(10,2)
SET @decimal = NULL
SELECT ISNULL(@decimal, 0.00) AS Valor

DECLARE @cadena VARCHAR(50)
SET @cadena = NULL
SELECT ISNULL(@cadena, 'Texto predeterminado') AS Valor

DECLARE @fecha DATETIME
SET @fecha = NULL
SELECT ISNULL(@fecha, GETDATE()) AS Valor

DECLARE @booleano BIT
SET @booleano = NULL
SELECT ISNULL(@booleano, 0) AS Valor

DECLARE @moneda MONE
SET @moneda = NULL
SELECT ISNULL(@moneda, 0.00) AS Valor

