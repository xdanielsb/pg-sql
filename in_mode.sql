create or replace function find_by_email(_email varchar)
returns varchar
language plpgsql
as $$
declare 
  first_name estudiante.nombre1%type;
begin
  -- find by email
  select nombre1
  into first_name
  from estudiante
  where email = _email;

  if not found then
    raise 'There is no students registered with %  email', _email;
  end if;

  return first_name;
end;$$;


select find_by_email(_email:='gabriela@correo.udistrital.edu.co');
select find_by_email('juanes@correo.udistrital.edu.co');



