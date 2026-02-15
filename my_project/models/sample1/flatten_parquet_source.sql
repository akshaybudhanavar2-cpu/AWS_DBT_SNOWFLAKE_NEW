select f1.value:year::int as year,
f1.value:biofuel_electricity::float as biofuel_electricity,
f1.value:coal_electricity::float as coal_electricity,
f1.value:gas_electricity::float as gas_electricity,
f1.value:solar_electricity::float as solar_electricity,
f1.value:wind_electricity::float as wind_electricity,
f1.value:nuclear_electricity::float as nuclear_electricity,
f1.value:hydro_electricity::float as hydro_electricity,
f1.value:other_renewable_electricity::float as other_renewable_electricity,
f1.value:other_non_renewable_electricity::float as other_non_renewable_electricity,
f1.value:total_electricity::float as total_electricity,
f1.value:country::string as country,
f1.value:continent::string as continent,
f1.value:population::int as population,
f1.value:gdp::float as gdp
from 
(select f.value:data::variant as data
from 
{{ source('learnsnow', 'json_array_table') }} as t,
lateral flatten(input => t.variant_col) as f
limit 5 ) gg,
lateral flatten(input => gg.data) as f1
