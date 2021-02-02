/* This do a sleep over the code */
do $$ 
declare
   created_at time := now();
begin 
   raise notice '%', created_at;
   perform pg_sleep(10);
   raise notice '%', created_at;
end $$;
