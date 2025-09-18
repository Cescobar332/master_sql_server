-- Funciones de conversión y texto
declare @var1 varchar(20)
declare @var2 varchar(20)
set @var1 = 'Ramiro'
set @var2 = 'Gonzalez'
print LEFT(@var1, 2)
print RIGHT(@var1, 2)
print LEFT(@var1, 1) + LEFT(@var2, 1)

print LEN(@var1)
print LEFT(@var1, LEN(@var1) - 1)

print LOWER(@var1) + UPPER(@var2)

set @var3 = '3sc0b4r'
select REPLACE(@var3, '3', 'e')
select REPLACE(@var3, '0', 'o')
select REPLACE(@var3, '4', 'a')

print REPLICATE('0', 5)

set @var4 = '      Sebastian   '
SELECT LTRIM(RTRIM(@var4))

SELECT CONCAT(@var1, ' ', @var2)

SELECT GETDATE()
SELECT GETUTCDATE()

SELECT DATEADD(day, 2, getdate())

SELECT DATEDIFF(year, getdate(), '20170120')
SELECT DATEDIFF(month, '20170120', getdate())

SELECT DATEPART(month, getdate())
SELECT DATEPART(dw, getdate())

print ISDATE(getdate()) -- 1 = TRUE, 2 = FALSE
if ISDATE('20191331') = 1
  print 'es una fecha'
else
  print 'fecha incorrecta'

declare @numero money
set @numero = 500.40
print @numero
SELECT CAST(@numero as INT) AS numero
SELECT CONVERT(int, @numero)
declare @fecha datetime
set @fecha = getdate()
print @fecha
print CONVERT(char(8), @fecha, 112)
