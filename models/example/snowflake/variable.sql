--assign variable  dynamically in .yml 
--vars:
    --datavar: 1

-- dynamic approch

select * from sankita_table WHERE id = '{{ var('data') }}'