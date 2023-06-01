-- Question 1 : How many people survive and how many people dead
--showing how many people survived and dead

select
case
when survived = 0 then 'Dead People'
when survived = 1 then 'Alive People'
end as People_status ,
count(*) as Number_of_people from titanic group by survived