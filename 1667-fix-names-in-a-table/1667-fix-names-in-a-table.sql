# Write your MySQL query statement below
select user_id,  CONCAT(UCASE(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) as name from Users ORDER BY user_id;