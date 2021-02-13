/*
 * author: github.com/xdanielsb
 * date:   13.02.2021
 */

-- Function to compute x  ^  y mod m
create or replace function power (
  x out number, y out number
) return number
as

ans number := 1;
m number := 1000000007;

begin
    while y > 0
    loop
     if MOD(y, 2) = 1 then
        ans := mod(ans * x, m);
      end if;
      x := mod(x * x, m);
      y := y / 2; 
    end loop;
    return ans;
end;

/
-- function to compute polynomial hashing 
create or replace procedure phashing( str in varchar2)
as
  v_length number(10);
  v_out varchar2(20);
  phash number := 0;
  m number := 1000000007;
begin
  v_length := length(str);
  for i in 1..v_length
  loop
    v_out  := substr(str,i,1);
    -- this can be do it faster updating power each iteration
    phash :=  phash + ( ASCII(v_out) * power(31, i-1));
    phash := mod(phash, m);
  end loop;
  dbms_output.put_line('hash of : ' || str || ' = ' || phash);
end;

/

begin
  phashing('hello');
  phashing('helo');
  phashing('hell0');
end;
