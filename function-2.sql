/* Count the number of students who have a gpa in [_from, _to] */
drop function if exists  get_cnt_students_gpa_range;
create function get_cnt_students_gpa_range(_from int, _to int)
returns int
language plpgsql
as
$$
declare 
  ans integer;
begin
  select count(*)
  into ans
  from estudiante
  where promedio between _from and _to;

  return ans;
end;
$$;


select get_cnt_students_gpa_range(0,1);
select get_cnt_students_gpa_range(_from := 0, _to := 10);
select get_cnt_students_gpa_range(0, _to => 10);
