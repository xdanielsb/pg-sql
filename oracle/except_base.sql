create table deparment (  
  deptno        number,  
  name          varchar2(50) not null,  
  location      varchar2(50),  
  constraint pk_departments primary key (deptno)  
);
insert into deparment(deptno, name, location) values (1, 'dep 1', 'japan');
insert into deparment(deptno, name, location) values (2, 'dep 2', 'japan');
insert into deparment(deptno, name, location) values (3, 'dep 1', 'italy');
select * from deparment;

/* procedure  with exception*/

create or replace procedure factorial(ni in number) 
is 
begin 
   if ni < 0  
   then 
      raise value_error; 
   end if; 
end;

/* this will call an exception */
begin
   factorial (ni => -1); 
end;

/* this won't call an exception */
begin
   factorial (ni => 1); 
end;


/* end procedure and call */

create table words (word varchar2(10));



