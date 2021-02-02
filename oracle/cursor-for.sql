
create table names (idx number);

BEGIN
    FOR idname IN 1..20
    LOOP
       --DBMS_OUTPUT.put_line (idname);
       insert into names(idx)  values(idname);
    END LOOP;
END;


select * from names;

DECLARE 
   CURSOR names_cur 
   IS 
      SELECT * FROM names; 
BEGIN 
   FOR rec IN names_cur 
   LOOP 
      DBMS_OUTPUT.put_line (rec.idx); 
   END LOOP; 
END;
