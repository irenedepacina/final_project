-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "state_us_master" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    PRIMARY KEY (
        "state_name"
     )
);

CREATE TABLE "state_temp" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "tempf" float   NOT NULL,
    "tempc" float   NOT NULL,
    PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "nation_temp" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "tempf" float   NOT NULL,
    "tempc" float   NOT NULL,
    PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "state_season" (
    "state_name" varchar   NOT NULL,
    "annual" float   NOT NULL,
    "fall" float   NOT NULL,
    "spring" float   NOT NULL,
    "summer" float   NOT NULL,
    "winter" float   NOT NULL,
    "max_warming_season" varchar   NOT NULL,
    PRIMARY KEY (
        "state_name"
     )
);

CREATE TABLE "state_population" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "population_thousands" int   NOT NULL,
    PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_rgdp" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "rgdp_millions" int   NOT NULL,
    PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_emissions" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "co2_emissions" float   NOT NULL,
    PRIMARY KEY (
        "state_name","year"
     )
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
    PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_energy" (
    "state_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "pe_coal" bigint   NOT NULL,
    "pe_naturalgas" bigint   NOT NULL,
    "pe_petroleum" bigint   NOT NULL,
    "pe_nuclear" bigint   NOT NULL,
    "pe_totalrenew" bitint   NOT NULL,
    "re_biomass" bigint   NOT NULL,
    "re_geothermal" bigint   NOT NULL,
    "re_hydropower" bigint   NOT NULL,
    "re_solar" bigint   NOT NULL,
    "re_wind" bigint   NOT NULL,
    PRIMARY KEY (
        "state_name","year"
     )
);

ALTER TABLE "state_temp" ADD CONSTRAINT "fk_state_temp_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

ALTER TABLE "nation_temp" ADD CONSTRAINT "fk_nation_temp_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

ALTER TABLE "state_season" ADD CONSTRAINT "fk_state_season_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

ALTER TABLE "state_population" ADD CONSTRAINT "fk_state_population_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

ALTER TABLE "state_rgdp" ADD CONSTRAINT "fk_state_rgdp_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

ALTER TABLE "state_emissions" ADD CONSTRAINT "fk_state_emissions_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

ALTER TABLE "state_disasters" ADD CONSTRAINT "fk_state_disasters_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

ALTER TABLE "state_energy" ADD CONSTRAINT "fk_state_energy_state_name" FOREIGN KEY("state_name")
REFERENCES "state_us_master" ("state_name");

