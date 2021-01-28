create table numbert (a int) ;

create or replace procedure transaction_test()
LANGUAGE plpgsql
AS $$
BEGIN
  FOR i IN 0..5 LOOP
    INSERT INTO  numbert (a) VALUES (i);
    IF i % 2 = 0 THEN
      COMMIT;
    ELSE
      ROLLBACK;
    END IF;
  END LOOP;
END
$$;

CALL transaction_test();

SELECT * FROM numbert;

/*
CREATE TABLE
CREATE PROCEDURE
CALL
 a 
---
 0
 2
 4
(3 rows)
/*
