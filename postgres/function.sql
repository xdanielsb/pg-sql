/* Funciton to return the student who matches the given id */
create function find_student_by_id(
   id int
) returns estudiante
language sql
as 
$$
  select * from estudiante 
  where id_estudiante = id;  
$$; 
