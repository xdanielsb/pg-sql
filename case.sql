/* Example using case */
do $$ 
declare
    total numeric; 
    res varchar(25) ;
begin
     select sum(promedio) into total
     from estudiante;
	 
	 if found then
	    case 
		    when total > 50 then
            res = 'kind' ;
        when total > 100 then
	          res = 'ok' ;
        else
            res = 'yes' ;
        end case;
		raise notice 'Ans: % because %', res, total;
     else
	    raise notice 'There are not students';
	 end if;
end; $$ 
