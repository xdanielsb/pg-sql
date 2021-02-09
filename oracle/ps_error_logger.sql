/*

  Purpose:    Utilities to be used all around the  packages
  Remarks:  
  Who         Date        Description
  ------      ----------  -------------------------------------
  xdanielsb   09.02.2021  Created

  hi teacher Consuelo
*/


-- header of utilities
create or replace package utilities 
as 
  /**
   * purpose     : log a error
   * @param      : the message to be log
   */
   procedure log_error (msg in varchar2);

  /**
   * purpose     : debug some results
   * @param      : the message to be debug
   */
   procedure debug_info (msg in varchar2);
   
  /**
   * purpose     : debug some results
   * @param      : the message  and value to be debug
   */
   procedure debug_value (msg in varchar2, val in numeric);

end utilities;

/

-- body of utilities
create or replace package body utilities 
as 
  procedure log_error (msg  in varchar2) 
  is 
  begin 
    debug_info(sqlcode || '-' || msg); 
    debug_info(dbms_utility.format_error_stack);           
    debug_info(dbms_utility.format_error_backtrace);       
  end log_error;


  procedure debug_info (msg in varchar2)
  as
    mtext varchar2(32000);
  begin
    mtext:=to_char(sysdate, 'dd.mm.yyyy hh24:mi:ss') || ': ' || nvl(msg, '(null)');
    loop
      exit when mtext is null;
      dbms_output.put_line(substr(mtext,1,100));
      mtext:=substr(mtext, 101);
    end loop;
  end debug_info;
  
  procedure debug_value (msg in varchar2, val in numeric )
  as
  begin
    debug_info(msg || ': ' || nvl(to_char(val), '(null)'));
  end debug_value;

end utilities;

/

begin
    raise value_error;
exception 
   when others 
   then 
    utilities.log_error('upps some error happened.'); 
    utilities.debug_info('upps something info happened.'); 
    utilities.debug_value('score', 100);
end;
