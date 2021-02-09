declare 
   cursor estudiante_cur 
   is 
      select * from estudiante; 
begin 
   for rec in estudiante_cur 
   loop 
      update estudiante set n_apellido = upper(n_apellido) where k_codest=rec.k_codest;
   end loop; 
end;
