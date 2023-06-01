-- Question 2 : How many people survive how does not have sibling
select
case
when survived = 0 then 'Dead People with no sibling'
when survived = 1 then 'Alive People with no sibling'
end as People_status ,
count(*) as Number_of_people from titanic
where sibsp = 0 and survived = 1
group by People_status