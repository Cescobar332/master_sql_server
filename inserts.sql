INSERT INTO Paciente (dni, nombre, apellido, fnacimiento, domicilio, idPais, telefono, email, observacion)
  VALUES ('33521569', 'Leandro', 'Paredes', '1982-05-20', 'Piedras 150', 'ARG', NULL, 'leandro@gmail.com', '');
INSERT INTO TurnoEstado (idEstado, descripcion) 
VALUES
(0, 'Pendiente'),
(1, 'Realizado'),
(2, 'Cancelado'),
(3, 'Rechazado'),
(4, 'Postergado'),
(5, 'Anulado'),
(6, 'Derivado');
INSERT INTO Turno (idTurno, fechaTurno, estado, observacion) VALUES (1, '15-03-2023', 0, 'Paciente en ayunas');
INSERT INTO Concepto (idconcepto, descripcion) 
VALUES
(0, 'Laboratorio'),
(1, 'Radiografía'),
INSERT INTO Pago (idpago, concepto, fecha, monto, estado, obs) 
VALUES
(1, 9, '2019-02-15', 4500, 0, 'Pago pendiente'),
(2, 3, '2019-05-20', 6800, 0, 'Pago pendiente'),
(3, 1, '2019-09-27', 5600, 0, 'Pago pendiente');
INSERT INTO PagoPaciente (idPago, idPaciente, idTurno)
VALUES
(3, 2, 1),
(1, 3, 2),
(2, 1, 3);
INSERT INTO Especialidad (especialidad)
VALUES
('Traumatología'),
('Clínica Médica'),
('Gastroenterología'),
('Pediatría');
