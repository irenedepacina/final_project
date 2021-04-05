# Climate Change Group Project


## Team 
- Irene 
- Sebastian
- Stephanie
- Vinutha

## Communication Methods
1. Primary: Slack Workspace - GroupProject - multiple channels for different topics
2. Secondary: text/call
3. Datasets: Google Drive/Github
https://drive.google.com/drive/folders/1Zz8U47NFCVOTpPoTCnhM6cKdX1Dzs-MN?usp=sharing


## Selected Topic
Climate change by State in the USA

## Rationale
- Dataset availability
- US is one of the largest emitters of CO2 in developed countries.
- Population density and land mass lends itself to analysis
- Climate change is an interesting topic with lot of available data.

## Discovery Questions
-	Climate Change (Temperature) trends over time by state
-	State by state environmental impact
-	Are states experiencing climate change equally?
-  Human impact on the US on climate change?
- Are some states exacerbating climate change through consumption patterns?

### DataSources:
- Processed as: df1
Raw file name: climdiv_state_year.csv
Exported file name: state_temp.csv
Source: https://data.world/environmentdata/analysis-of-noaa-climate-change-data/workspace/file?filename=climdiv_state_year.csv

- Processed as: df2
Raw file name: climdiv_national_year.csv
Exported file name: nation_temp.csv
Source: https://data.world/environmentdata/analysis-of-noaa-climate-change-data/workspace/file?filename=climdiv_national_year.csv

- Processed as: df3
Raw file name: model_state.csv
Exported file name: state_season.csv
Source: https://data.world/environmentdata/analysis-of-noaa-climate-change-data/workspace/file?filename=model_state.csv

- Processed as: df4
Raw file name: use_pop_gdp_1.csv
Exported file name: state_population.csv
Source: https://www.eia.gov/state/seds/seds-data-complete.php?sid=US#StatisticsIndicators
(Key statistics and indicators > other > population and GDP)

- Processed as: df5
Raw file name: use_pop_gdp_2.csv
Exported file name: state_rgdp.csv
Source: https://www.eia.gov/state/seds/seds-data-complete.php?sid=US#StatisticsIndicators
(Key statistics and indicators > other > population and GDP)

- Processed as: df6
Raw file name: t2_co2_emissions.csv
Exported file name: state_emissions.csv
Source: https://www.eia.gov/environment/emissions/state/

- Processed as: df7
Raw file name: clean_weather.csv
Exported file name: state_disasters.csv
Source: https://www.ncdc.noaa.gov/billions/mapping

## ML Model to be used
Unsupervised ML, PCA, KMeans and Neural Network Linear Regression

Please see ML_README for more updates


## Database to be used
Postgres, SQL and PgAdmin

Please see README_ETL for more information on data cleaning and loading process.

## Dashboard
Tableau - Heroku Hybrid

please see README_DASHBOARD for more information