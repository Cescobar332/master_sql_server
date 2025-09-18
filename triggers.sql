-- Primer caso: Trigger de tipo insert
CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT
AS

IF (SELECT idpais FROM inserted) = 'MEX'
  INSERT into PacienteLog (idpaciente, idpais, fechaAlta)
    SELECT i.idpaciente, i.idpais, getdate() FROM Inserted i

-- Trigger de tipo update
CREATE TRIGGER PacientesModificados ON Paciente
AFTER UPDATE
AS

IF EXISTS (SELECT idpaciente FROM PacienteLog
            WHERE idpaciente = (SELECT idpaciente FROM Inserted))
  UPDATE PacienteLog SET fechaModificacion = GETDATE()
    WHERE idpaciente = (SELECT idpaciente FROM Inserted)
ELSE
  INSERT INTO PacienteLog (idpaciente, idpais, fechaModificacion)
  SELECT idPaciente, idPais, GETDATE() FROM Inserted

-- Trigger de tipo delete
CREATE TRIGGER PacientesEliminados ON Paciente
FOR DELETE
AS

IF EXISTS (SELECT idpaciente FROM PacienteLog
			WHERE idpaciente = (SELECT idpaciente FROM Deleted))
	UPDATE PacienteLog SET fechaBaja = GETDATE()
		WHERE idpaciente = (SELECT idpaciente FROM Deleted)
ELSE
	INSERT INTO PacienteLog (idpaciente, idpais, fechaBaja)
	SELECT idPaciente, idPais, GETDATE() FROM Deleted
