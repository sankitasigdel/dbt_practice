-- Question 4 : Remove the NAN data from cabin and display updated list
select * from titanic where cabin is not null -- removing nan data from cabin