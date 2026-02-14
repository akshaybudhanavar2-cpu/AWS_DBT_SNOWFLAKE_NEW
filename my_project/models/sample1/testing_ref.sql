with testing_ref as (
  select value:c1::string as POKEMON,
         value:c2::string as Colour,
         value:c3::string as Type,
         value:c4::Date as Create_Date,
         value:c5::string as weight,
         value:c6::string as Attack,
         value:c7::string as Yeild_Type,
         value:c8::string as Yeild,
        {{ get_strength_category('value:c6::string') }} as Strength_Category
  from {{ ref('DBT_tesing1') }}
)
select * from testing_ref