{{ config (
    materialized = "incremental",
    incremental_strategy = "merge",
    unique_key = "id"
    )
}} ---Configuration as incremental model and strategy as merge

select * from source_table --selecting everything from source table