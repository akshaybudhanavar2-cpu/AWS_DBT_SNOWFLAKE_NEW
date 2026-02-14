with testing_ref as (
  select value:c1::string as c1_value,
         value:c2::string as c2_value,
         value:c3::string as c3_value,
         value:c4::string as c4_value,
         value:c5::string as c5_value,
         value:c6::string as c6_value,
         value:c7::string as c7_value,
         value:c8::string as c8_value,
         pokemon,
         type
  from {{ ref('DBT_tesing1') }}
)
select * from testing_ref