-- Question 5 : How many male who died and how many female died
select sex, COUNT(*) AS Count_dead FROM (
select * from titanic where Survived = 0
) group by sex