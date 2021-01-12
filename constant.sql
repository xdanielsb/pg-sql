/* Defne a constant */ 
do
$$
declare
    scale numeric := 10;
    factor constant numeric := 2.0;
begin
    raise notice 'The factor is %', factor * scale;
end $$;
