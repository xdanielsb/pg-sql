
/* allows to create functions with number of variable arguments.*/
create function minor_element(VARIADIC numeric[])
returns numeric AS 
$$
  select min($1[i]) FROM generate_subscripts($1, 1) g(i);
$$ 
LANGUAGE SQL;

select minor_element(10, -1, 5, 4.4);


/*
CREATE FUNCTION
 minor_element 
---------------
            -1
(1 row)
*/
