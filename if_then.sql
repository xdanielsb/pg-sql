/* If then example */ 
do $$
declare
   stud estudiante%rowtype;
   msg varchar(100);
begin  

  select * from estudiante
  into stud
  where id_estudiante = 1;
  
  if not found then
     raise notice 'Film not found';
  else
      if stud.promedio >0 and stud.promedio <= 1 then
		 msg := 'Upps';
	  elsif stud.promedio > 1 and stud.promedio < 2 then
		 msg := 'Ouch';
	  elsif stud.promedio > 2 then
		 msg := 'Common';
	  else 
		 msg := 'N/A';
	  end if;
    
	  raise notice '% %.',
	     stud.nombre1,  
	     msg;
  end if;
end $$
