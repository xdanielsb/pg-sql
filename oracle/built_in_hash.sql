-- this scripts were based on the tutorial in
-- https://danischnider.wordpress.com/2017/01/24/how-to-build-hash-keys-in-oracle/

create or replace 
function hash_key (v_input varchar2) return raw deterministic
as
   pragma udf;
begin
   return dbms_crypto.hash(utl_raw.cast_to_raw(v_input), dbms_crypto.hash_md5);
end hash_key;

/


select hash_key('hello') from dual;

-- create one million hash without collision 

with input_data as
   (select rownum n, STANDARD_HASH(rownum, 'MD5') hash
      from dual connect by rownum <= 1000000)
select hash, count(*)
  FROM input_data
group by hash having count(*) > 1;
