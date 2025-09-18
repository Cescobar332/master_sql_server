## 📌 Procedimientos de información sobre objetos

### 🔹 `sp_help <objeto>`

Muestra información general sobre un objeto (tabla, vista, proc, etc.).

```sql
EXEC sp_help Paciente;
```

📌 Verás columnas, tipos de datos, claves, índices, etc.

### 🔹 `sp_helptext <objeto>`

Muestra el **código fuente** de un procedimiento, función o vista.

```sql
EXEC sp_helptext 'ALTA_Paciente';
```

### 🔹 `sp_columns <tabla>`

Lista solo las **columnas** de una tabla o vista.

```sql
EXEC sp_columns Paciente;
```

---

## 📌 Procedimientos para usuarios y seguridad

### 🔹 `sp_helpuser`

Lista los usuarios de la base de datos actual y sus roles.

```sql
EXEC sp_helpuser;
```

### 🔹 `sp_helprole`

Muestra los roles definidos en la base de datos.

```sql
EXEC sp_helprole;
```

---

## 📌 Procedimientos de administración

### 🔹 `sp_who`

Muestra información de las conexiones activas en el servidor.

```sql
EXEC sp_who;
```

### 🔹 `sp_who2`

Versión más detallada de `sp_who`, con info de procesos y bloqueos.

```sql
EXEC sp_who2;
```

### 🔹 `sp_lock`

Muestra los **bloqueos** actuales en la base de datos.

```sql
EXEC sp_lock;
```

---

## 📌 Procedimientos sobre bases de datos

### 🔹 `sp_databases`

Lista todas las bases de datos del servidor.

```sql
EXEC sp_databases;
```

### 🔹 `sp_tables`

Muestra las tablas y vistas disponibles en la base de datos actual.

```sql
EXEC sp_tables;
```

---

## 🎯 Resumen rápido (cuando usar cada uno)

* **Estructura de objetos** → `sp_help`, `sp_columns`
* **Código fuente** → `sp_helptext`
* **Usuarios/roles** → `sp_helpuser`, `sp_helprole`
* **Conexiones y procesos** → `sp_who`, `sp_who2`, `sp_lock`
* **Info de bases/tablas** → `sp_databases`, `sp_tables`
