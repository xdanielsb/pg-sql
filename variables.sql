do $$ 
declare
   counter    integer := 1;
   first_name varchar(50) := 'Hydrax';
   last_name  varchar(50) := 'Do Santos';
   payment    numeric(11,2) := 2000000.5;
   today      date := current_timestamp;
begin 
   raise notice '% % % has been paid % USD at %', 
      counter, 
	   first_name, 
	   last_name, 
	   payment,
     today;
end $$;
