# Visualizations

## Our Story

We wanted to gain insight on climate change in the United States. We are interested to know if we quantify the humna impact on climate change in the USA. In addition, we want to know if states are experiencing climate change equally and if some states are exacerbating climate change more than others.  

## Presentation Slides:
https://docs.google.com/presentation/d/15MENIOhjLSVF9AC3xavduDZ4B1AA4qlJFtM7gXTUJPA/edit#slide=id.p

## Primary Responsibilities:
 Stephanie and Irene

1. Team discussed what elements we would like to include on dashboard (if possible)
    - Interactive Map (focus) with slider for time
    - "Baseball Card"
    - US Summary/Purpose
    - graphs (2-3) - Based on Findings
    - filters
    - layers

2. Created Blueprint
<img src="dashboard_mock.png"></img>

3. Created mock dashboard on Tableau with placeholder images
<img src= "dashboard_practice.png"></img>

4. Created skeleton for JS Web Dashboard if data/group decides to use

5. Created combined_features_PCA3_K5.csv with all features included and totals for Primary Energy and Disaster Columns for visualization.

6. Updated file to be used for visualizations "combined_features.csv" to read

7. Decided to use Tableau because Tableau provides a variety of graphs and charts. It provides a lot of features such as layers and filters that we want to utilize in order to best visual our results. It suits our needs of the project to be able to easily combine geographical (mapped) data with charts of our feature variables.

8. Decided to make a webpage using HTML, CSS, and Javascript to better convey our story and enhance user experience.


## Dashboard Descriptions and Tableau Links

Irene:
- The dashboard below showcases the climate change trends in the United States over time. The graphs highlight the features; location, population, CO2 emissions, GDP, natural disasters, energy consumption, and renewable energy that a help predict temperature. Based on our machine learning model and accuracy, we have found that location and geographical features are key indicators in predicting temperature. On the other hand, features like natural disasters has little to no effect on temperature. The interactive map clearly shows that states closer to the equator are warmer in comparsion to those that are further away. 
https://public.tableau.com/profile/irene.depacina#!/vizhome/ClimateChangeTrends_16174174601980/Dashboard1?publish=yes

- The dashboard below showcases a breakdown of features based on the state. The prupose of the analysis is to discover if some states are exacerbating climate climate based on human impact. The dashboard enables users to compare states against each other. Users can compare CO2 emissions, average temperature, energy usage, and natural disasters. 
https://public.tableau.com/profile/irene.depacina#!/vizhome/ResultsbyState/Dashboard1


Stephanie:

- The below dashboard focusses on the clusters/classes defined in our unsupervised machine learning model. The map shows the class by colour and when the user hovers over a state, the details for all features used are available for that state. The minimum, maximum and average values by cluster are on the side for comparison. Population size is visually represented by the size of the circle. Time is accounted for by playback feature. There are also additional pages that will be used to examine ratio of different energy types used and the affects of other features on our clusters will be added
https://public.tableau.com/profile/stephanie.m.juniper#!/vizhome/Climate_Change_USA/FindingsbyCluster?publish=yes


- These dashboards represent our key, high level findings representing temperature, CO2 and the relationship between both. 
- Upcoming -- using a .csv of our predicted findings, we will be able to visualize the difference in our models using the predictions output with and without state name(geography) included.
https://public.tableau.com/profile/stephanie.m.juniper#!/vizhome/Temp_CO2_highlights/CO2_Key_Findings?publish=yes

## Webpage

- Used HTML, CSS, and Javacript to create a webpage
- The webpage is divided into 7 sections:
    - Climate Trends
    - Temperature Findings
    - CO2 Emissions Findings
    - Our Model
    - Predictions and Accuracy
    - Energy Consumption
    - State Comparison
    - Conclusions/Key Takeaways
- The structure of the webpage is to showcase the biggest takeaways in less detail first and then the lower importance facts in more detail
- The webpage highlights all of the findings from the climate change datasets and machine learning model. The findings are visualized in a manner that is honest and easily accessible. The dashboards enables users to see trends and statistics based on selected years, states, and clusters. 

