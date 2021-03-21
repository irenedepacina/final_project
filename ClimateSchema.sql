-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "state_temp" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" int   NOT NULL,
    "tempf" float   NOT NULL,
    "tempc" float   NOT NULL,
    CONSTRAINT "pk_state_temp" PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "nation_temp" (
    "year" int   NOT NULL,
    "tempf" float   NOT NULL,
    "tempc" float   NOT NULL,
    CONSTRAINT "pk_nation_temp" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "state_season" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "annual" float   NOT NULL,
    "fall" float   NOT NULL,
    "spring" float   NOT NULL,
    "summer" float   NOT NULL,
    "winter" float   NOT NULL,
    "max_warming_season" varchar   NOT NULL,
    CONSTRAINT "pk_state_season" PRIMARY KEY (
        "state_name"
     )
);

CREATE TABLE "state_population" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" int   NOT NULL,
    "population_thousands" float   NOT NULL,
    CONSTRAINT "pk_state_population" PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_rgdp" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" int   NOT NULL,
    "rgdp_millions" float   NOT NULL,
    CONSTRAINT "pk_state_rgdp" PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_emissions" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" int   NOT NULL,
    "co2_emissions" float   NOT NULL,
    CONSTRAINT "pk_state_emissions" PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_disasters" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" int   NOT NULL,
    "drought" bit   NOT NULL,
    "flooding" bit   NOT NULL,
    "freeze" bit   NOT NULL,
    "severe_storm" bit   NOT NULL,
    "tropical_cyclone" bit   NOT NULL,
    "wildfire" bit   NOT NULL,
    "winter_storm" bit   NOT NULL,
    CONSTRAINT "pk_state_disasters" PRIMARY KEY (
        "state_name","year"
     )
);

ALTER TABLE "state_temp" ADD CONSTRAINT "fk_state_temp_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_rgdp" ("state_name", "year");

ALTER TABLE "state_population" ADD CONSTRAINT "fk_state_population_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_temp" ("state_name", "year");

ALTER TABLE "state_rgdp" ADD CONSTRAINT "fk_state_rgdp_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_population" ("state_name", "year");

ALTER TABLE "state_emissions" ADD CONSTRAINT "fk_state_emissions_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_temp" ("state_name", "year");

ALTER TABLE "state_disasters" ADD CONSTRAINT "fk_state_disasters_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_temp" ("state_name", "year");

