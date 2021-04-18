# Climate Change Group Project

## Team 
- Irene Depacina
- Sebastian Villanoy
- Stephanie Juniper
- Vinutha BS

## Selected Topic : <i><b>"Climate change by State in the USA"</i></b>

## Rationale
- Climate change is an interesting topic with lot of available data.
- US is one of the largest emitters of CO2 in developed countries.
- Population density and land mass lends itself to analysis
- Dataset availability

## Discovery Questions
- Can we quantify the human impact on climate change in the USA?
- Does human impact affect how states individually experience climate change?
- Are there climate change trends evident in temperature over time?
- Are some states exacerbating climate change through consumption patterns?
- Using the datasets, can we predict temperature using human impacts on climate change versus geographical information alone?
- Is there a possibility to predict any other feature like CO2, year, state disasters from the datasets?

## Key Findings from the analysis
- A model that solely uses human-related features to predict climate change measured in average annual state temperature is not accurate
- Location has major influence both temperature and human-related features
- A model that quantifies the impact of a state's energy consumption pattern on CO2 emissions, the main culprit of rising temperatures
- Energy consumption from non-renewable sources such as coal, petroleum, and natural gas contribute to increasing CO2 emissions
- Energy consumption from renewable sources such as biomass, hydropower, solar, and wind either reduce CO2 emissions
- While humna impact on temperature is difficult to determine concluively with our data, human impact on CO2 emissions can be predicted and impacted through responsible selection of energy sources. 

## Dashboard
- Visualizations were created using Tableau and HTML Hybrid.
- HTML/CSS/Java webpage <a href="https://irenedepacina.github.io/climate_change/">Climate Change Webpage</a>
- Interactive Tableau Visualizations
    - <a href="https://public.tableau.com/profile/irene.depacina#!/vizhome/ClimateChangeTrends_16174174601980/Dashboard1">Climate Change Trends over Time</a>
    - <a href="https://public.tableau.com/profile/irene.depacina#!/vizhome/ResultsbyState/Dashboard1">Results by State</a>
    - <a href="https://public.tableau.com/profile/stephanie.m.juniper#!/vizhome/Climate_Change_USA/FindingsbyCluster?publish=yes">Unsupervised Machine Learning Model Clusters</a>
    - <a href="https://public.tableau.com/profile/stephanie.m.juniper#!/vizhome/Temp_CO2_highlights/CO2_Key_Findings?publish=yes">Machine Learning Predictions</a>
- Please find presentation of our analysis on <a href="https://docs.google.com/presentation/d/15MENIOhjLSVF9AC3xavduDZ4B1AA4qlJFtM7gXTUJPA/edit#slide=id.p">Google Slides</a>
- Please see <a href="https://github.com/irenedepacina/final_project/blob/develop/Dashboard/README.md">Dashboard --> README</a> for more details.

## Data Sources:
- While in search of climate change related datasets for US, ended up identifying some of the sites to have reliable datasets in csv format.
- Saved these datasets into repository under <a href="https://github.com/irenedepacina/final_project/tree/develop/Resources/data_raw">Resources/data_raw</a>.
- These datasets are from websites :
    - https://data.world/environmentdata/
    - https://www.eia.gov/
    - https://www.ncdc.noaa.gov/
- Please see <a href="https://github.com/irenedepacina/final_project/blob/develop/Data_Processing/README.md">Data_Processing --> README</a> for more details.

## Database
- Datasets of .csv file format, hence decided on Postgres DB, using SQL and PgAdmin
- Total of 10 tables were designed, created and loaded into climate_change PostgreSQL DB.
- Please see <a href="https://github.com/irenedepacina/final_project/blob/develop/Database/README.md">Database --> README</a> for more details.

## Machine Learning
- Unsupervised Machine Learning performed as exploratory machine learning using PCA, Elbow curve & KMeans Algorithm
- Multiple linear regression using Neural Network and SKLearn
- Multiple linear regression models using R to identify confounding features and features behaving as proxies for US states
- Detailed statistical analysis using various data transformation techniques
- Please see <a href="https://github.com/irenedepacina/final_project/blob/develop/Machine_Learning/README.md">Machine_Learning --> README</a> for more details.
---
---