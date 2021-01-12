some test vor pl/pgsql

this test assume that you have a table called
***estudiante*** with the following description

```sql
create table estudiante(
  id_estudiante serial primary key,
  identificacion varchar(30) unique not null,
  nombre1 varchar(50) not null,
  nombre2 varchar(50),
  apellido1 varchar(50) not null,
  apellido2 varchar(50),
  promedio numeric(3,2) constraint chk_estudiante_promedio_greater_in_zero_five_range check(promedio >=0 and promedio <=5.0),
  matriculas_restantes smallint default 10,
  email varchar(100),
);
```
