with sankitatablesource_new as (
    select a.id, a.name, b.age from {{ source('sankitatablesource','SANKITA_TABLE')}} as a
    join {{ source('sankitatablesource','SANKITA_AGE')}} as b
    on a.name = b.name
)

select * from sankitatablesource_new