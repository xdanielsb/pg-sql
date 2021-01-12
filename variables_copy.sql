/* Copy types */ 
do $$
declare
  id_std estudiante.id_estudiante%type;
  id_aux id_std%type;
begin
    select id_estudiante
    from estudiante
    into id_std
    where id_estudiante = 1;

    raise notice 'Id student = %', id_std;
end; $$
