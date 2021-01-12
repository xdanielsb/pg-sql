/* Count the number of registers in the table student */
do 
$$
declare
   count_st integer;
begin 
   select count(*) into count_st
   from estudiante;
   raise notice 'The number of students: %', count_st;
end;
$$
