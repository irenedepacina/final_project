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
    "year" year   NOT NULL,
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
    "year" year   NOT NULL,
    "population_thousands" float   NOT NULL,
    CONSTRAINT "pk_state_population" PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_rgdp" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" year   NOT NULL,
    "rgdp_millions" float   NOT NULL,
    CONSTRAINT "pk_state_rgdp" PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "state_emissions" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" year   NOT NULL,
    "co2_emissions" float   NOT NULL,
    CONSTRAINT "pk_state_emissions" PRIMARY KEY (
        "state_name","year"
     )
);

CREATE TABLE "clean_weather" (
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
    CONSTRAINT "pk_clean_weather" PRIMARY KEY (
        "state_name","year"
     )
);

ALTER TABLE "state_temp" ADD CONSTRAINT "fk_state_temp_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_rgdp" ("state_name", "year");

ALTER TABLE "nation_temp" ADD CONSTRAINT "fk_nation_temp_year" FOREIGN KEY("year")
REFERENCES "state_temp" ("year");

ALTER TABLE "state_season" ADD CONSTRAINT "fk_state_season_state_name" FOREIGN KEY("state_name")
REFERENCES "state_temp" ("state_name");

ALTER TABLE "state_population" ADD CONSTRAINT "fk_state_population_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_temp" ("state_name", "year");

ALTER TABLE "state_rgdp" ADD CONSTRAINT "fk_state_rgdp_state_name" FOREIGN KEY("state_name")
REFERENCES "state_season" ("state_name");

ALTER TABLE "state_rgdp" ADD CONSTRAINT "fk_state_rgdp_year" FOREIGN KEY("year")
REFERENCES "state_population" ("year");

ALTER TABLE "state_emissions" ADD CONSTRAINT "fk_state_emissions_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_temp" ("state_name", "year");

ALTER TABLE "clean_weather" ADD CONSTRAINT "fk_clean_weather_state_name_year" FOREIGN KEY("state_name", "year")
REFERENCES "state_temp" ("state_name", "year");


--**********************************************************
--WORKING QUERIES TO INSERT state_temp, state_emissions
--**********************************************************
CREATE TABLE "vinu_state_temp" (
    "state_name" varchar NOT NULL,
    "state_abb" varchar NOT NULL,
    "year" int NOT NULL,
    "tempf" float   NOT NULL,
    "tempc" float   NOT NULL,
    PRIMARY KEY ("state_name", "year")
);

-- commented state_abb column - by 20th mar this column was WIP
CREATE TABLE "state_emissions" (
    "state_name" varchar   NOT NULL,
    --"state_abb" varchar   NOT NULL, --no yet in table
    "year" int   NOT NULL,
    "co2_emissions" float   NOT NULL,
    PRIMARY KEY ("state_name","year")
);

--Before creating tem_emi table to crosscheck state_name and year of both tem and emi tables
SELECT tem.state_name, tem.state_abb, tem.year, tem.tempf, tem.tempc, 
	emi.state_name, emi.year, emi.co2_emissions
	--INTO tem_emi
	FROM vinu_state_temp as tem 
	FULL OUTER JOIN vinu_state_emissions as emi 
	ON tem.state_name = emi.state_name 
	WHERE tem.state_name = emi.state_name AND tem.year = emi.year;

--tem_emi outer join data with where clause to tem_emi table
SELECT tem.state_name, tem.state_abb, tem.year, tem.tempf, tem.tempc, emi.co2_emissions
	INTO tem_emi
	FROM vinu_state_temp as tem 
	FULL OUTER JOIN vinu_state_emissions as emi 
	ON tem.state_name = emi.state_name 
	WHERE tem.state_name = emi.state_name AND tem.year = emi.year;

--20TH MAR NIGHT - NOT WORKING AS STATE_NAME COLUMN WAS WIP
CREATE TABLE "state_population" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" int   NOT NULL,
    "population_thousands" float   NOT NULL,
    PRIMARY KEY ("state_name","year")
);

--20TH MAR NIGHT - NOT WORKING AS STATE_NAME COLUMN WAS WIP
CREATE TABLE "state_rgdp" (
    "state_name" varchar   NOT NULL,
    "state_abb" varchar   NOT NULL,
    "year" int   NOT NULL,
    "rgdp_millions" float   NOT NULL,
    PRIMARY KEY ("state_name","year")
);
--*****************************************************************************