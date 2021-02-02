/*
 @author: xdanielsb
 this function check if a certain id is not allowed to
 carried out an activity.
*/
create or replace function new_exception(id int)
returns void
language plpgsql
as
$$

declare
    v_state   TEXT;
    v_msg     TEXT;
    v_detail  TEXT;
    v_hint    TEXT;
    v_context TEXT;

begin
  if id=1 then
    raise exception using
      errcode='NOIDA',
      message='Id one is prohibited',
      hint='Change of id';
  end if;
exception
  when sqlstate 'NOIDA' then
    GET STACKED DIAGNOSTICS
      v_state   = RETURNED_SQLSTATE,
      v_msg     = MESSAGE_TEXT,
      v_detail  = PG_EXCEPTION_DETAIL,
      v_hint    = PG_EXCEPTION_HINT,
      v_context = PG_EXCEPTION_CONTEXT;
    raise notice E'Et une exception :
            state  : %
            message: %
            detail : %
            hint   : %
            context: %', v_state, v_msg, v_detail, v_hint, v_context;
  when others then
    raise notice 'catch others exception';
end;
$$

/*
  select new_exception(1); 
  select new_exception(2);
*/
