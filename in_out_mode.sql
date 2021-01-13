create or replace function swap_numbers(
  inout x int,
  inout y int
)
language plpgsql
as $$
begin
  select x, y into y, x;
end; $$;

select * from swap_numbers(1, 2);

/* CREATE FUNCTION */
/* -[ RECORD 1 ] */
/* x | 2 */
/* y | 1 */
