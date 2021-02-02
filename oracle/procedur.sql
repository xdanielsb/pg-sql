declare 
    num1 number(4); 
    num2 number(4); 
    num3 number(4); 
    num4 number(4); 
    
procedure p1(a number, b number, c out number, d out number, e out number, f out number) is 
begin 
    c:=a+b; 
    d:=a-b; 
    e:=a*b; 
    f:=a/b; 
end; 

begin 
    p1(2, 3, num1, num2, num3, num4); 
    dbms_output.put_line(num1||' '||num2||' '||num3||' '||num3); 
end;

