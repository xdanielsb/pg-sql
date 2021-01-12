/* A foor loop with record */ 
do
$$
declare
  rec record;
begin
  for rec in select nombre1, apellido1, promedio
          from estudiante
          where promedio > 4.0
  loop
      raise notice '% (%)', rec.nombre1, rec.apellido1;
  end loop;
end;
$$
