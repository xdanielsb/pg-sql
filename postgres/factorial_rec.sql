/* ! recursive */
drop function if exists fact_rec;
create function fact_rec (a integer) returns bigint as
$$
declare
  result bigint;
begin
  if a < 0 then
      raise exception 'factorial for %s (negative value) is not defined ', a;    
  end if;
  if a<=1 then
    return 1;
  else
    return a*(fact_rec(a-1));
  end if;
end;
$$
language plpgsql immutable;
