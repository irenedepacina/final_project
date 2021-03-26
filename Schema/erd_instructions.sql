state_us_master
-
state_name pk varchar
state_abb varchar

state_temp
-
state_name pk varchar FK >- state_us_master.state_name
year pk int
tempf float
tempc float

nation_temp
-
state_name varchar FK >- state_us_master.state_name
year pk int 
tempf float
tempc float

state_season
-
state_name pk varchar FK >- state_us_master.state_name
annual float
fall float
spring float
summer float
winter float
max_warming_season varchar

state_population
-
state_name pk varchar FK >- state_us_master.state_name
year pk int 
population_thousands int

state_rgdp
-
state_name pk varchar FK >- state_us_master.state_name
year pk int 
rgdp_millions int

state_emissions
-
state_name pk varchar FK >- state_us_master.state_name
year pk int
co2_emissions float

state_disasters
-
state_name pk varchar FK >- state_us_master.state_name
year pk int
drought int
flooding int
freeze int
severe_storm int
tropical_cyclone int
wildfire int
winter_storm int

state_energy
-
state_name pk varchar FK >- state_us_master.state_name
year pk int
pe_coal bigint
pe_naturalgas bigint
pe_petroleum bigint
pe_nuclear bigint
pe_totalrenew bitint
re_biomass bigint
re_geothermal bigint
re_hydropower bigint
re_solar bigint
re_wind bigint
