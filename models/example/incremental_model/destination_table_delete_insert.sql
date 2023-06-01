{{ config (
    materialized = "incremental",
    incremental_strategy = "delete+insert",
    unique_key = "id"
    )
}} ---Configuration as incremental model and strategy as delete+insert

select * from source_table --selecting everything from source table