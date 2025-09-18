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
