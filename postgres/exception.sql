do
$$
declare 
  rec record;
  std_id int:=10;
begin 
  -- select student
  select nombre1, apellido1
  into strict rec
  from estudiante 
  where id_estudiante = std_id;

  -- catch exception
  exception
    when no_data_found then
      raise exception 'there are no students with id=%', std_id;
end;
$$;

/*
You have other options of exception for instance
when no_data_found --> no data found
when too_many_rows --> many rows found it
*/
