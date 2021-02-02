/* Use of row types */
do $$ 
declare
    row_student estudiante%rowtype;
begin
  -- select student with a given id
  select * 
  from estudiante
  into row_student
  where id_estudiante = 1;

  -- show the results
  raise notice ' The student name is % %',
    row_student.nombre1,
    row_student.apellido1;

end; $$
