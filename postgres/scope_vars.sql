/* See variables in different scopes */
do $$
  <<control>>
declare
    days integer := 0;
begin
    days := days + 1;
    raise notice 'Current day %', days;

    declare
      days integer := 0;
    begin
      days := days + 2;
      raise notice 'Days in subblock is %', days;
      raise notice 'Days in outer block is %', control.days;
    end;

    raise notice 'Days in outer block is %', days;
end control $$;
