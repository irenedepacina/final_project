# Climate Change Group Project

## Team 
- Irene 
- Sebastian
- Stephanie
- Vinutha

## Machine Learning Model :
- The dataset considered for this project is pertaining to climate change for the geographical location of a country "United States of America".
- The human interventions contributing to climate change are specifically considered along with other set of usual features like time and various states of US.
- Feature list is as follows :
    - state_name
    - year
    - temp
    - state_emissions.co2_emissions
    - state_population.population_thousands
    - state_rgdp.rgdp_millions
    - state_energy --> pe_coal, pe_naturalgas, pe_petroleum, pe_nuclear, re_biomass, re_geothermal, re_hydropower, re_solar, re_wind
    - state_disasters --> drought, flooding, freeze, severe_storm, tropical_cyclone, wildfire, winter_storm
- As this dataset has lot of potential to be explored to understand the clusters of data and as per suggestion from teaching faculty, Unsupervised learning model was explored.
- Post Unsupervised ML, it was determined that temp of a state could be considered as a target for supervised ML with rest all supplied as features.
- Multiple Linear regression was designed to predict the continuous numerical value of temp using tensorflow.Keras module of neural network.  

# Unsupervised Machine Learning model
- Initially PCA was implemented to figure out the most number of principal components for this dataset. 3 PCs were determined to be the optimum.
- Elbow curve was plotted to figure out the most number of clusters for this dataset. As there is a good enough elbow bend at 4, # of clusters was determined to be 4.
- <img src = "ML_Resources/Elbow_curve.png"></img>
- KMeans algorithm was run to break the dataset into 4 different cluster classes.
- The output of the Unsupervised Machine learning model was written into a csv file and saved as "Unsupervised_ML_output.csv".
- This data with the cluster classes labeled was analysed to understand the category falling into each cluster.
- <img src = "ML_Resources/KMeans_Outputclasses.png"></img>

# Supervised Machine Learning model
- To be updated as the model progresses