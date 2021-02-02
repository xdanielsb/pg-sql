/* While */
do $$
declare
    n integer := 18;
begin
  while n > 0 loop
    raise notice '%', n;
    n := n / 2;
  end loop;
end$$;



