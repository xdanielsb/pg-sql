
/*
 * author: Daniel Santos @xdanielsb
 * date:   9.feb.2021
 */


-- Header of the package students
create or replace package pkg_students 
as 
 -- The signature of the functions is shown below

 /**
  * purpose: Get the name of a student given its id
  *
  * @param   id_estudiante  id of the student
  * @return  namestd if the string represents a valid sql name
  * @throws  ORA-ERROR_CODE_HERE: invalid SQL Statement 
  */
 function  get_name_student (id_estudiante in number) return varchar2; 

 /**
  * Set the name of a student given its id
  *
  * @param   id_estudiante  string to be checked
  * @throws  ORA-ERROR_CODE_HERE: invalid SQL Statement 
  */
 procedure test_proc (id_estudiante in number); 
end; 
/


-- Body of the package students
create or replace package body pkg_students 
as 
 function get_name_student (id_estudiante in number) return varchar2  
 is 
 namestd varchar2(50);
 begin 
 select n_nombre into namestd from estudiante where  k_codest=id_estudiante;
 return namestd;
exception 
  when others then 
    RAISE; 
 end; 
 
 procedure test_proc  (id_estudiante in number) 
 is 
 begin 
 dbms_output.put_line (id_estudiante); 
 exception 
  when others then 
    RAISE; 
 end; 
end;
/


select pkg_students.get_name_student(105) from dual;
execute pkg_students.test_proc(2)

