-- ***************************************************************************************************************************************************--
-- Prerequisite - create the "climate_change" database in postgres through pgAdmin
-- Create 9 DB tables to hold the climate change data limited to the region "USA" as country and its states 
-- Create "state_us_master" as a master table having all possible entries of US states added for state_name
-- state_name column in state_us_master table serves as foreign key to all the other tables to make sure only US and its states data are inserted
-- ***************************************************************************************************************************************************--

CREATE TABLE "state_us_master" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    PRIMARY KEY ("state_name"),
    UNIQUE ("state_abb")
);

CREATE TABLE "state_temp" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "tempf" float   NOT NULL,
    "tempc" float   NOT NULL,
    PRIMARY KEY ("state_name","year"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "nation_temp" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "tempf" float   NOT NULL,
    "tempc" float   NOT NULL,
    PRIMARY KEY ("year"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_season" (
    "state_name" varchar   NOT NULL,
    "annual" float   NOT NULL,
    "fall" float   NOT NULL,
    "spring" float   NOT NULL,
    "summer" float   NOT NULL,
    "winter" float   NOT NULL,
    "max_warming_season" varchar   NOT NULL,
    PRIMARY KEY ("state_name"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_population" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "population_thousands" int   NOT NULL,
    PRIMARY KEY ("state_name","year"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_rgdp" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "rgdp_millions" int   NOT NULL,
    PRIMARY KEY ("state_name","year"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_emissions" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "co2_emissions" float   NOT NULL,
    PRIMARY KEY ("state_name","year"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_disasters" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "drought" int   NOT NULL,
    "flooding" int   NOT NULL,
    "freeze" int   NOT NULL,
    "severe_storm" int   NOT NULL,
    "tropical_cyclone" int   NOT NULL,
    "wildfire" int   NOT NULL,
    "winter_storm" int   NOT NULL,
    PRIMARY KEY ("state_name","year"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_energy" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "pe_coal" bigint   NOT NULL,
    "pe_naturalgas" bigint   NOT NULL,
    "pe_petroleum" bigint   NOT NULL,
    "pe_nuclear" bigint   NOT NULL,
    "pe_totalrenew" bigint   NOT NULL,
    "re_biomass" bigint   NOT NULL,
    "re_geothermal" bigint   NOT NULL,
    "re_hydropower" bigint   NOT NULL,
    "re_solar" bigint   NOT NULL,
    "re_wind" bigint   NOT NULL,
    PRIMARY KEY ("state_name","year"),
    FOREIGN KEY("state_name") REFERENCES "state_us_master" ("state_name")
);
-- *********** END OF SCRIPT ******************************************************--