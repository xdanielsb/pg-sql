begin
  raise_application_error(-20000, 'This is an error example');
exception
  when others then  
    dbms_output.put(dbms_utility.format_error_stack);
    dbms_output.put_line('');
end;
/
