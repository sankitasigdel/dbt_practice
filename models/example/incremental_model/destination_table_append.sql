{{ config (
    materialized = "incremental",
    incremental_strategy = "append"
    )
}} ---Configuration as incremental model and strategy as append

select * from source_table --selecting everything from source table