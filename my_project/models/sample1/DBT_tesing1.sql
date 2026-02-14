with DBT_testing1 as (
  select value, pokemon, type from {{ source('learnsnow', 'my_ext_table') }}
)
select * from DBT_testing1