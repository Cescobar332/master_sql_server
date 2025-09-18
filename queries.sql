SELECT * FROM paciente;

SELECT idpaciente, nombre, apellido FROM paciente;

SELECT TOP 2 * FROM Paciente;

SELECT TOP 3 nombre, apellido FROM Paciente;

SELECT * FROM Paciente
ORDER BY fnacimiento DESC;

SELECT TOP 1 * FROM Paciente
ORDER BY fnacimiento DESC;

SELECT DISTINCT idPais FROM Paciente;

SELECT idPais FROM Paciente
GROUP BY idPais;

SELECT * FROM Paciente 
WHERE idPais = 'PER';

SELECT * FROM Paciente 
WHERE apellido = 'Perez';

SELECT * FROM Paciente 
WHERE idpaciente = 4;

SELECT * FROM Paciente 
WHERE fnacimiento = '20170104';

UPDATE Paciente
SET observacion = 'sin observación'
WHERE idpaciente = 4;

UPDATE Paciente
SET dni = '458256965', domicilio = 'Calle 23 1512'
WHERE idpaciente = 4;

DELETE FROM Paciente
WHERE idPaciente = 6;

SELECT MAX(fecha) FROM pago;

SELECT MIN(monto) FROM pago;

SELECT SUM(monto) FROM pago;

SELECT SUM(monto) + 20 as montoTotal FROM pago;

SELECT * FROM pago
SELECT AVG(monto) AS montoPromedio FROM pago;

SELECT COUNT(idpaciente) 
FROM paciente
WHERE apellido = 'Perez'

SELECT estado
FROM turno
GROUP BY estado
HAVING COUNT(estado) > 1;

-- OPERADORES
SELECT *
FROM paciente
WHERE apellido = 'Perez'
AND nombre = 'Roberto'
OR idpaciente = 7;

SELECT *
FROM turno
WHERE estado IN(2, 1, 3);

SELECT *
FROM paciente
WHERE apellido IN ('perez', 'ramirez', 'Gonzalez');

SELECT *
FROM paciente
WHERE nombre
LIKE 'robe%';

SELECT *
FROM paciente
WHERE nombre
NOT LIKE '%rob';

SELECT *
FROM turno
WHERE fechaTurno
BETWEEN '20190102' AND '20190106'

-- ESTRUCTURAS DE CONTROL
DECLARE @idpaciente int
SET @idpaciente = 7
IF @idpaciente =7
  SELECT *
  FROM paciente
  WHERE idpaciente = @idpaciente

DECLARE @idturno int
IF @idpaciente = 7
BEGIN
  SET @idturno = 20
  SELECT *
  FROM paciente
  WHERE idpaciente = @idpaciente
  PRINT @idturno
END
ELSE
BEGIN
  print "No se cumplió la condición"
END

IF EXISTS(SELECT * FROM paciente WHERE idpaciente = 2)
  print 'existe'

DECLARE @contador int = 0
WHILE @contador <= 10
BEGIN
  print @contador
  SET @contador = @contador + 1
END

DECLARE @valor int
DECLARE @resultado char(10) = ''
SET @valor = 20
SET @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
                        WHEN @valor = 20 THEN 'VERDE'
                        WHEN @valor = 30 THEN 'AZUL'
  END)
print @resultado

SELECT *, (CASE WHEN estado = 1 THEN 'VERDE'
  WHEN estado = 2 THEN 'ROJO'
  WHEN estado = 3 THEN 'AZUL'
  END)
FROM turno

DECLARE @contador int = 0
WHILE @contador <= 10
BEGIN
  print @contador
  SET @contador = @contador + 1
  IF @contador = 3
    RETURN
  -- BREAK
END

BEGIN TRY
  SET @contador = 'texto'
END TRY

BEGIN CATCH
  print 'No es posible asignar un texto a la variable @contador'
END CATCH

-- OPERADORES ARITMÉTICOS
DECLARE @num1 decimal (9, 2) = 20
DECLARE @num2 decimal (9, 2) = 30
DECLARE @result decimal (9, 2)
SET @result = @num1 + @num2
/*
+
-
/
*
%
*/
print @result

DECLARE @text1 varchar(20) = 'Hola me llamo'
DECLARE @text2 varchar(20) = 'Mariano'
DECLARE @result varchar(40)
SET @result = @num1 + ' ' + @num2
print @result

-- OTROS OPERADORES MATEMÁTICOS
/*
>
<
=
<> (distinto/negación)
*/
DECLARE @num1 decimal (9, 2) = 20
DECLARE @num2 decimal (9, 2) = 30
IF @num2 > @num1
  print 'si'
