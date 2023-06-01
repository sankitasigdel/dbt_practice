
{% set new_id = run_query('SELECT MAX(id) FROM {{this}}') %}

{{ config(
    materialized='incremental',
    incremental_strategy='insert_overwrite',
    partitions= var('new_id'),
    partition_by={
        'field': 'id',
        'data_type': 'int'
    }
)}}


select *
from source_table
where id > {{new_id}}
