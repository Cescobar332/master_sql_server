-- Existen en memoria o físicas
-- En memoria
DECLARE @mitabla TABLE (id int IDENTITY(1,1), pais varchar(50))
INSERT INTO @mitabla values('MEXICO')
INSERT INTO @mitabla values('PERU')
INSERT INTO @mitabla values('ARGENTINA')
INSERT INTO @mitabla values('COLOMBIA')
INSERT INTO @mitabla values('ECUADOR')

SELECT * FROM @mitabla

-- TABLA TEMPORAL FISICA
CREATE TABLE #mitabla (id int IDENTITY(1,1), nombre varchar(50), apellido varchar(50))
INSERT INTO #mitabla values('Alejandro', 'Lopez')
INSERT INTO #mitabla values('Rafael', 'Castillo')
INSERT INTO #mitabla values('Fernando', 'Gonzalez')
SELECT * FROM #mitabla
DROP TABLE #mitabla

-- SCRIPT DE IMPLEMENTACIÓN DE TABLAS TEMPORALES
DECLARE @turnos table (id int IDENTITY(1,1), idturno turno, idpaciente paciente)
INSERT INTO @turnos (idturno, idpaciente)
SELECT TP.idturno, P.idpaciente FROM Paciente P
  inner join turnoPaciente TP
  on TP.idPaciente = P.idPaciente

declare @i int, @total int
set @i = 1
set @total = (select count(*) from @turnos)

WHILE @i <= @total
BEGIN
  IF (select * from @turnos where id = @i) <> 8
    delete from @turnos where id = @i

  set @i = @i + 1
END

select * from Paciente P
  inner join @turnos T
  ON t.idpaciente = P.idpaciente

select * from @turnos
