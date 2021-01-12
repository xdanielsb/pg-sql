/* Use of record types */
do $$ 
declare
    rec_std record;
begin
  -- select student with a given id
  select count(*) as cnt
  from estudiante
  into rec_std;

  -- show the results
  raise notice ' Counting students, res count % ',
    rec_std.cnt;
end; $$
