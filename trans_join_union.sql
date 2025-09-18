/*
BEGIN TRANSACTION
COMMIT TRANSACTION
ROLLBACK TRANSACTION
*/
BEGIN TRAN
  UPDATE paciente SET telefono = 444 WHERE idpaciente = 8
  if @@ROWCOUNT = 1
    COMMIT TRAN
  else
    ROLLBACK TRAN

BEGIN TRAN
  DELETE FROM turno
  WHERE estado = 0
if @@rowcount = 1
  COMMIT TRAN
else
  ROLLBACK TRAN

-- JOINS & UNIONS
SELECT *
FROM Paciente P
INNER JOIN TurnoPaciente T
ON T.idpaciente = P.idpaciente
  
SELECT *
FROM Paciente P
LEFT JOIN TurnoPaciente T
ON T.idpaciente = P.idpaciente

SELECT *
FROM Paciente P
RIGHT JOIN TurnoPaciente T
ON T.idpaciente = P.idpaciente
-----------------------------------
SELECT * FROM turno
WHERE estado = 3
UNION
SELECT * FROM turno
WHERE estado = 1
-- Para que UNION funcione ambos select deben ser sobre la misma tabla
SELECT * FROM TURNO
UNION ALL
SELECT * FROM TURNO
-- Con ALL se repiten todos los registros
