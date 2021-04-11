# Climate Change Group Project

## Team 
- Irene 
- Sebastian
- Stephanie
- Vinutha

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
- To be updated shortly

## Dashboard
- Visualizations were created using Tableau and Heroku Hybrid.
- HTML / Heroku page <a href="placeholder">Place Holder link should be updated</a>
- Interactive Tableau visualizations
    - <a href="https://public.tableau.com/profile/irene.depacina#!/vizhome/ClimateChangeTrends_16174174601980/Dashboard1?publish=yes">location and geographical features are key indicators</a>
    - <a href="https://public.tableau.com/profile/irene.depacina#!/vizhome/ResultsbyState/Dashboard1">compare CO2 emissions, average temperature, energy usage, and natural disasters</a>
    - <a href="https://public.tableau.com/profile/irene.depacina#!/vizhome/ResultsbyState/Dashboard2">features having strong correlation</a>
    - <a href="https://public.tableau.com/profile/stephanie.m.juniper#!/vizhome/Climate_Change_USA/FindingsbyCluster?publish=yes">unsupervised machine learning model clusters</a>
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