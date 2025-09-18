CREATE VIEW PacientesTurnosPendientes AS
SELECT P.idpaciente, P.nombre, P.apellido, T.idturno, T.estado 
FROM Paciente P
  inner join TurnoPaciente TP
  on TP.idPaciente = P.idPaciente
  inner join Turno T
  on T.idTurno = TP.idturno
WHERE isnull(T.estado, 0) = 0

SELECT * FROM PacientesTurnosPendientes
