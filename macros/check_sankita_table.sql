{% test is_name(model,column_name)%}
    with validation as (
        select {{column_name}} as name from {{model}}
    ),

    validation_errors as (
        select name from validation where name = 'Sankita'
    )

    select * from validation_errors
{% endtest %}