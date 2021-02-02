
create table words (word varchar2(10));

create or replace trigger upper_word
before insert on words
for each row
begin
  :new.word := upper(:new.word);
end;

insert into words (word) values (' test1 ')

select * from words;
