ALTER TABLE Paciente ADD estado smallint
ALTER TABLE Paciente ALTER COLUMN estado bit
ALTER TABLE Paciente DROP COLUMN estado

-- Argumentos por default en CREATE TABLE
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DBO].[Pais](
[idPais] [char](3) NOT NULL,
[pais] [varchar](30) NULL,
CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED
(
[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Los corchetes se utilizan cuando utilizamos palabras reservadas por el motor, de esa manera lo interpreta como texto y no como un comando.

-- DBO es el esquema por default de la base de datos (explicado más adelante)

-- SET ANSI_NULLS activa o desactiva la comparación contra valores NULL

-- GO separa una instrucción de otra

-- SET QUOTED_IDENTIFIER activa o desactiva el uso de comillas dobles para palabras reservadas.

-- CLUSTERED genera una indexación que define cómo se organizan los datos en una tabla en función de la clave primaria.

-- ASC define el ordenamiento de la indexación sobre la clave primaria.

-- Descripción de atributos:
PAD_INDEX
STATISTICS_NORECOMPUTE
IGNORE_DUP_KEY
ALLOW_ROW_LOCKS
ALLOW_PAGE_LOCKS

ALTER TABLE Paciente
ADD FOREIGN KEY (idPais) REFERENCES Pais(idPais)

  /*
ALTER TABLE Paciente
ADD FOREIGN KEY (idPaciente) REFERENCES HistoriaPaciente(idPaciente)*/

ALTER TABLE HistoriaPaciente
ADD FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente)

CREATE FUNCTION nombrefun (@var int)
RETURNS int

AS

BEGIN
  SET @var = @var * 5
  RETURN @var
END

SELECT dbo.nombrefun (256)

DROP TABLE ejemplo -- Borra la tabla

TRUNCATE TABLE ejemplo -- Borra todos los registros de la tabla
