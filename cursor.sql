/* Function to get the names of all students with a general purpose average >= gpa */
create or replace function get_names_std_with_gpa(gpa dec)
  returns text 
  as $$

declare 
  names text default '';
  rec_std  record;
  cur_gpa cursor (gpa dec) for
              select *
              from estudiante
              where promedio >= gpa;
begin
    --open the cursor
    open cur_gpa(gpa);
    loop
      -- fetch row
      fetch cur_gpa into rec_std;
      -- exit when no more row to fetch
      exit when not found;
      -- build the output
      names := names || ',' || rec_std.nombre1;
    end loop;

    close cur_gpa;
    return names;
end; $$

language plpgsql;


/* cur_gpa cursor to capture a subsets of students with a given gpa */
/* select get_names_std_with_gpa(4.8); */
