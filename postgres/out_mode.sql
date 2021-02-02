create or replace function get_stats_gpa(
  out min_gpa numeric,
  out avg_gpa numeric,
  out max_gpa numeric)
language plpgsql
as $$
begin

  select min(promedio), avg(promedio), max(promedio)
  into min_gpa, avg_gpa, max_gpa
  from estudiante;

end;$$;


select get_stats_gpa();
/* -[ RECORD 1 ]-+------------------------------- */
/* get_stats_gpa | (4.50,4.7500000000000000,5.00 */
select * from get_stats_gpa();
/* -[ RECORD 1 ]--------------- */
/* min_gpa | 4.50 */
/* avg_gpa | 4.7500000000000000 */
/* max_gpa | 5.00 */
