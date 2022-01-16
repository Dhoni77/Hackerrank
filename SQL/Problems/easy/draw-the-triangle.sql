select repeat('* ', @num:=@num-1) from information_schema.tables, (select @num:=21)
new_table limit 20;
----------------------------------------------
WITH RECURSIVE rnum(n)
    AS (SELECT 20
            UNION ALL
            SELECT n-1
            FROM rnum
            WHERE n > 1)
SELECT REPEAT('* ', n)
FROM rnum;

-----------------------------------------------
set @i = 21;
select repeat('* ', @i := @i - 1) from 
    (select 1 union select 2 union select 3) a, 
    (select 1 union select 2 union select 3) b,
    (select 1 union select 2 union select 3) c
limit 20;
