{{
  config(
    materialized = 'incremental',
    unique_key = 'pokemon',
    incremental_strategy = 'merge',
    )
}}

select * from {{ source('learnsnow', 'load_csv_second_table') }} 