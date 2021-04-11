## ETL Information

Processed as: df1 <br>
Raw file name: model_state.csv <br>
Exported file name: state_season.csv <br>
Source: https://data.world/environmentdata/analysis-of-noaa-climate-change-data/workspace/file?filename=model_state.csv <br>
Shape: (48,7)<br>
Processed column names:
- state_name = state name (object) 
- annual = annual estimate of annual average temperature change in Celsius for the state in the period 1895-2019 (float64) 
- fall = fall temperature change in September, October and November (float64) 
- spring = spring temperature change in March, April and May (float64) 
- summer = summer temperature change in June, July and August (float64) 
- winter  = winter temperature change in December and the following January and February (float64)
- max_warming_season  = the season where temperatures are increasing fastest (object)

<hr>

Processed as: df2 <br>
Raw file name: climdiv_national_year.csv <br>
Exported file name: nation_temp.csv <br>
Source: https://data.world/environmentdata/analysis-of-noaa-climate-change-data/workspace/file?filename=climdiv_national_year.csv <br>

Shape: (125,4) <br>
Processed column names:
- state_name = state name which is all ‘US’ in this case (object)
- year= year 1895-2019 (int64)
- tempf= The average annual temperature in Fahrenheit of the US at a given year (float64)
- tempc= The average annual temperature in Celsius of the US at a given year (float64)

<hr>

Processed as: df3 <br>
Raw file name: climdiv_state_year.csv <br>
Exported file name: state_temp.csv <br>
Source: https://data.world/environmentdata/analysis-of-noaa-climate-change-data/workspace/file?filename=climdiv_state_year.csv <br>

Shape: (6000,4) <br>
Processed column names:
- state_name = state name (object)
- year = year 1895-2019 (int64) 
- tempf = The average annual temperature in Fahrenheit of a state at a given year (float64)
- tempc = The average annual temperature in Celsius of a state at a given year (float64)

<hr>

Processed as: df4 <br>
Raw file name: use_pop_gdp_population.csv <br>
Exported file name: state_population.csv <br>
Source: https://www.eia.gov/state/seds/seds-data-complete.php?sid=US#StatisticsIndicators <br>
(Key statistics and indicators > other > population and GDP) <br>

Shape: (3068,3) <br>
Processed column names:
- state_name = state name (object)
- year = year 1960-2018 (int64)
- population_thousands = resident population including Armed Forces in thousands (int64)

<hr>

Processed as: df5 <br>
Raw file name: use_pop_gdp_realgdp.csv <br>
Exported file name: state_rgdp.csv <br>
Source:  https://www.eia.gov/state/seds/seds-data-complete.php?sid=US#StatisticsIndicators <br>
(Key statistics and indicators > other > population and GDP) <br>

Shape: (1144, 3) <br>
Processed column names:
- state_name = state name (object)
- year = year 1997-2018 (int64)
- rgdp_millions = real gross domestic product in millions chained 2012 dollars (int64)

<hr>

Processed as: df6 <br>
Raw file name: t2_co2_emissions.csv <br>
Exported file name: state_emissions.csv <br>
Source: https://www.eia.gov/environment/emissions/state/ <br>

Shape: (1508, 3) <br>
Processed column names:
- state_name = state name (object)
- year = year 1990-2018 (int64)
- co2_emissions =  million metric tons of state energy-related carbon dioxide emissions at a given year, adjusted (float64)

<hr>

Processed as: df7 <br>
Raw file name: clean_weather.csv <br>
Exported file name: state_disasters.csv <br>
Source: https://www.ncdc.noaa.gov/billions/mapping <br>

Shape: (2132, 9) <br>
Processed column names:
- state_name = state name (object)
- year = year 1980-2020 (int64)
- drought= number of incidents of drought with losses exceeding $1 billion, CPI-Adjusted (int64)
- flooding= number of incidents of flooding with losses exceeding $1 billion, CPI-Adjusted (int64)
- freeze= number of incidents of freezing with losses exceeding $1 billion, CPI-Adjusted (int64)
- severe_storm = number of incidents of severe_storm with losses exceeding $1 billion, CPI-Adjusted (int64)
- tropical_cyclone= number of incidents of tropical_cyclone with losses exceeding $1 billion, CPI-Adjusted (int64)
- wildfire= number of incidents of wildfire with losses exceeding $1 billion, CPI-Adjusted (int64) 
- winter_storm= number of incidents of winter_storm with losses exceeding $1 billion, CPI-Adjusted (int64)

<hr>

Processed as: df8 <br>
<br>
Raw file names: use_energy_source_coal.csv, use_energy_source_natural_gas.csv, 
use_energy_source_nuclear,use_energy_source_petroleum.csv, use_energy_source_totalrenew.csv, 
use_renew_sector_biomass.csv, use_renew_sector_geothermal.csv, use_renew_sector_hydropower.csv, 
use_renew_sector_solar.csv, use_renew_sector_wind.csv <br>
<br>
Exported file name: state_energy.csv<br>
<br>
Source: https://www.eia.gov/state/seds/seds-data-complete.php?sid=US#StatisticsIndicators<br>
(Key statistics and indicators > consumption> Primary energy consumption by source)<br>
(Key statistics and indicators > consumption> Renewable energy consumption by source)<br>

Shape: (3068, 12)<br>
Processed column names:
- state_name = state name (object)
- year = year 1960-2018 (int64)
- pe_coal = Coal total consumption measured in Billion BTU (int64)
- pe_naturalgas = Natural gas total consumption (excluding supplemental gaseous fuels) measured in Billion BTU (int64)
- pe_petroleum = All petroleum products total consumption, excluding biofuels measured in Billion BTU (int64)
- pe_nuclear = Nuclear energy consumed for electricity generation, total measured in Billion BTU (int64)
- pe_totalrenew = Renewable energy sources total consumption measured in Billion BTU (int64)
- re_biomass = 	Biomass total consumption measured in Billion BTU (int64)
- re_geothermal = Geothermal energy total consumption measured in Billion BTU (int64)
- re_hydropower = Hydropower total consumption measured in Billion BTU (int64)
- re_solar = Solar energy total consumption measured in Billion BTU (int64)
- re_wind = Wind energy total consumption measured in Billion BTU (int64)

<hr>

Processed as: df9 <br>
Raw file name: Not applicable <br>
Exported file name: state_us_master.csv <br>
Source: Not Applicable <br>

Shape: (54, 2) <br>
Processed column names:
- state_name = state name (object)
- state_abb = state abbreviation (object)
