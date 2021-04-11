-- ####################### ***************************************** ################################
-- Pre-requisite is to create the DB Schema and load all the datasets using the Data_Processing steps
-- ####################### ***************************************** ################################

-- Run the below query to get all the features required for ML model script into a single table "climate_features"
-- climate_features table is taken into the ML.ipynb script and read into dataframe

SELECT tem.state_name, tem.year, tem.tempc, emi.co2_emissions,
	pop.population_thousands, gdp.rgdp_millions,
	ene.pe_coal, ene.pe_petroleum, ene.pe_naturalgas, ene.pe_nuclear,
	ene.re_biomass, ene.re_geothermal, ene.re_hydropower, ene.re_solar, ene.re_wind,
	dis.drought, dis.flooding, dis.freeze, dis.severe_storm, dis.tropical_cyclone, dis.wildfire, dis.winter_storm,
	mas.state_abb, tem.tempf, ene.pe_totalrenew
	INTO climate_features
	FROM state_temp as tem 
	FULL OUTER JOIN state_emissions as emi 
	ON tem.state_name = emi.state_name 
	FULL OUTER JOIN state_energy as ene 
	ON tem.state_name = ene.state_name
	FULL OUTER JOIN state_population as pop 
	ON tem.state_name = pop.state_name
	FULL OUTER JOIN state_rgdp as gdp 
	ON tem.state_name = gdp.state_name
	FULL OUTER JOIN state_disasters as dis 
	ON tem.state_name = dis.state_name
	FULL OUTER JOIN state_us_master as mas
	ON tem.state_name = mas.state_name
	WHERE tem.state_name = emi.state_name AND tem.year = emi.year AND
		  tem.state_name = ene.state_name AND tem.year = ene.year AND
		  tem.state_name = pop.state_name AND tem.year = pop.year AND
		  tem.state_name = gdp.state_name AND tem.year = gdp.year AND
		  tem.state_name = dis.state_name AND tem.year = dis.year AND
		  tem.state_name = mas.state_name
	ORDER BY tem.year, tem.state_name;

-- ******************* END OF FILE ****************************************