-- Creating a US States Temperature table
CREATE TABLE "state_temp" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "tempf" FLOAT NOT NULL,
    "tempc" FLOAT NOT NULL,
    PRIMARY KEY ("state_name","year")
);

-- Creating US National Temperature table
CREATE TABLE "nation_temp" (
    "year" INT NOT NULL,
    "tempf" FLOAT NOT NULL,
    "tempc" FLOAT NOT NULL,
    PRIMARY KEY ("year")
);

-- Creating Seasonal Temperatures by State table
CREATE TABLE "state_season" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "annual" FLOAT NOT NULL,
    "fall" FLOAT NOT NULL,
    "spring" FLOAT NOT NULL,
    "summer" FLOAT NOT NULL,
    "winter" FLOAT NOT NULL,
    "max_warming_season" VARCHAR NOT NULL,
    PRIMARY KEY ("state_name")
);

-- Creating Population by State table
CREATE TABLE "state_population" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "population_thousands" FLOAT NOT NULL,
    PRIMARY KEY ("state_name","year")
);

-- Creating a GDP by State Table
CREATE TABLE "state_rgdp" (
    "state_name" VARCHAR NOT NULL,
    "state_abb" VARCHAR NOT NULL,
    "year" INT NOT NULL,
    "rgdp_millions" FLOAT NOT NULL,
    PRIMARY KEY ("state_name","year")
);

-- Creating a CO2 Emissions by State table
CREATE TABLE "state_emissions" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "co2_emissions" FLOAT NOT NULL,
    PRIMARY KEY ("state_name","year")
);

-- Creating a Natural Disasters by State table
CREATE TABLE "state_disasters" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "drought" INT NOT NULL,
    "flooding" INT NOT NULL,
    "freeze" INT NOT NULL,
    "severe_storm" INT NOT NULL,
    "tropical_cyclone" INT NOT NULL,
    "wildfire" INT NOT NULL,
    "winter_storm" INT NOT NULL,
    PRIMARY KEY ("state_name","year")
);

-- Creating an Energy Consumption by State table
CREATE TABLE "state_energy" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "pe_coal" INT NOT NULL,
    "pe_naturalgas" INT NOT NULL,
    "pe_petroleum" INT NOT NULL,
    "pe_nuclear" INT NOT NULL,
    "pe_totalrenew" INT NOT NULL,
    "re_biomass" INT NOT NULL,
    "re_geothermal" INT NOT NULL,
    "re_hydropower" INT NOT NULL,
    "re_solar " INT NOT NULL,
    "re_wind" INT NOT NULL,
    PRIMARY KEY ("state_name","year")
);


-- Run the following to check if tables loaded successfully
SELECT * FROM nation_temp;
SELECT * FROM state_disasters;
SELECT * FROM state_emissions;
SELECT * FROM state_energy;
SELECT * FROM state_population;
SELECT * FROM state_rgdp;
SELECT * FROM state_season;
SELECT * FROM state_temp;

