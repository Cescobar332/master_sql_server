# SQL Server — Cheat Sheet: Procedimientos del sistema (sp_*)

| Procedimiento | Para qué sirve |
|---|---|
| `sp_help <objeto>` | Muestra información general sobre un objeto (tabla, vista, proc). Columnas, tipos, claves, índices. |
| `sp_helptext '<objeto>'` | Muestra el código fuente (definición) de un procedimiento, función o vista. |
| `sp_columns <tabla>` | Lista las columnas de una tabla o vista con tipos y longitudes. |
| `sp_tables` | Lista tablas y vistas en la base de datos actual. |
| `sp_databases` | Lista las bases de datos del servidor. |
| `sp_helpuser` | Lista usuarios de la base de datos y sus roles. |
| `sp_helprole` | Muestra roles definidos en la base de datos. |
| `sp_who` | Muestra conexiones activas (sesiones) en el servidor. |
| `sp_who2` | Versión extendida de `sp_who` con más detalles (no documentado oficialmente). |
| `sp_lock` | Muestra bloqueos (locks) activos. Útil para depurar problemas de concurrencia. |
| `sp_depends <objeto>` | Muestra dependencias de un objeto (qué lo usa y qué usa). Nota: puede no estar 100% actualizado en versiones nuevas. |
| `sp_renamedb` / `sp_rename` | Renombrar base de datos / objeto. Usar con precaución. |
| `sp_configure` | Muestra o cambia configuraciones del servidor (requiere RECONFIGURE para aplicar algunos cambios). |
| `sp_helpindex <tabla>` | Muestra índices definidos sobre una tabla. |
| `sp_helpconstraint <tabla>` | Muestra constraints (PK, FK, CHECK) de una tabla. |
| `sp_spaceused` | Muestra el espacio utilizado por una tabla o por la base de datos. |
| `sp_msforeachtable` | Ejecuta un comando para cada tabla (procedimiento no documentado). Útil para tareas masivas. |

---

## Tips rápidos
- Para ver definición completa de un procedimiento: `EXEC sp_helptext 'NombreSP';`  
- Para ver columnas específicas: `EXEC sp_columns NombreTabla;`  
- `sp_who2` es práctico para ver sesiones bloqueadas, pero no está documentado oficialmente.  
- Si vas a dar permisos a usuarios, es mejor delegar con procedimientos que los usuarios puedan ejecutar sin dar `INSERT/UPDATE/DELETE` directos sobre tablas.  
- Usa transacciones y manejo de errores en procedimientos de escritura para mantener consistencia.

---

## Ejemplos de uso
```sql
-- Estructura de la tabla Paciente
EXEC sp_help Paciente;

-- Código del procedimiento ALTA_Paciente
EXEC sp_helptext 'ALTA_Paciente';

-- Columnas de la tabla Paciente
EXEC sp_columns Paciente;

-- Ver sesiones activas
EXEC sp_who2;
```

---
*Generado el 18 de septiembre de 2025.*
