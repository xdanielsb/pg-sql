/* This functions transfer gpa between students */
/* haha */
create or replace procedure transfer_gpa(
  sender int,
  receiver int,
  amount dec
)
language plpgsql
as $$
begin
  -- substracting amount from sender
  update estudiante
  set promedio = promedio - amount
  where id_estudiante = sender;

  -- adding to the another student amout
  update estudiante
  set promedio = promedio + amount
  where id_estudiante = receiver;

  commit;
end; $$;


call transfer_gpa(2, 1, 0.1);
