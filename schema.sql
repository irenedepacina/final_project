-- Creating a US States Temperature table
CREATE TABLE "state_temp" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "tempf" FLOAT NOT NULL,
    "tempc" FLOAT NOT NULL,
    CONSTRAINT "pk_state_temp" PRIMARY KEY ("state_name","year")
);

-- Creating US National Temperature table
CREATE TABLE "nation_temp" (
    "year" INT NOT NULL,
    "tempf" FLOAT NOT NULL,
    "tempc" FLOAT NOT NULL,
    CONSTRAINT "pk_nation_temp" PRIMARY KEY ("year")
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
    CONSTRAINT "pk_state_season" PRIMARY KEY ("state_name")
);

-- Creating Population by State table
CREATE TABLE "state_population" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "population_thousands" FLOAT NOT NULL,
    CONSTRAINT "pk_state_population" PRIMARY KEY ("state_name","year")
);

-- Creating a GDP by State Table
CREATE TABLE "state_rgdp" (
    "state_name" VARCHAR NOT NULL,
    "state_abb" VARCHAR NOT NULL,
    "year" INT NOT NULL,
    "rgdp_millions" FLOAT NOT NULL,
    CONSTRAINT "pk_state_rgdp" PRIMARY KEY ("state_name","year")
);

-- Creating a CO2 Emissions by State table
CREATE TABLE "state_emissions" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "co2_emissions" FLOAT NOT NULL,
    CONSTRAINT "pk_state_emissions" PRIMARY KEY ("state_name","year")
);

-- Creating a Natural Disasters by State table
CREATE TABLE "clean_weather" (
    "state_name" VARCHAR(40) NOT NULL,
    "state_abb" VARCHAR(40) NOT NULL,
    "year" INT NOT NULL,
    "drought" BIT NOT NULL,
    "flooding" BIT NOT NULL,
    "freeze" BIT NOT NULL,
    "severe_storm" BIT NOT NULL,
    "tropical_cyclone" BIT NOT NULL,
    "wildfire" BIT NOT NULL,
    "winter_storm" BIT NOT NULL,
    CONSTRAINT "pk_clean_weather" PRIMARY KEY ("state_name","year")
);
