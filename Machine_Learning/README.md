# Climate change by State in the USA
## Machine Learning Model :
- The dataset considered for this project is pertaining to climate change for the geographical location of a country "United States of America".
- The human interventions contributing to climate change are specifically considered along with other set of features like time and various states of US.
- Datasets were collected from various reliable websites in csv format and a thorough data preprocessing was done with all the details mentioned in <a href="https://github.com/irenedepacina/final_project/blob/develop/Data_Processing/README.md">Data_Processing --> README</a>.
- After the data was processed, features were selected for thorough analysis based on the understanding of the features and its likely contribution to climate change.
- Finalised Feature list for analysis are as follows :
    - state_name
    - year
    - temp
    - CO2_emissions
    - population_thousands
    - rgdp_millions
    - state_energy --> pe_coal, pe_naturalgas, pe_petroleum, pe_nuclear, re_biomass, re_geothermal, re_hydropower, re_solar, re_wind
    - state_disasters --> drought, flooding, freeze, severe_storm, tropical_cyclone, wildfire, winter_storm
- As this dataset has lot of potential to be explored to understand the clusters of data, Unsupervised Machine learning model was employed.
- Post Unsupervised ML, it was determined that temp, CO2, year, state, disasters of a state could be considered as potential targets for supervised ML with rest supplied as features.  

# Unsupervised Machine Learning model
- All the features were taken into the "climate_features_df" by connecting to "climate_change" PostgreSQL DB.
- The data was observed to range from a "xx.xxxxxx" float temp in celsius values to population in thousands to rgdp in millions.
- Thus StandardScaler from sklearn library was used to  transform the dataset before using machine learning algorithm. 
- To start with, Principal Component Analysis (PCA) was implemented to figure out the most optimum number of principal components for this dataset. 3 PCs were determined to be the optimum and the best explained_variance_ratio_ = 71% was achieved for the 3 principal components identified. Unsupervised ML summary table below has all the details of the combinations.
- <img src = "ML_Resources/UnsupervisedML_SummaryTable.png"></img>
- Elbow curve was plotted to figure out the optimum number of clusters for the dataset. As there is a good enough elbow bend at 4, # of clusters was determined to be 4 for the best PCA feature combination.
- <img src = "ML_Resources/Elbow_curve.png"></img>
- KMeans algorithm was run to break the dataset into 4 different cluster classes.
- The output of the Unsupervised Machine learning model was saved into a csv file as "Unsupervised_ML_output.csv".
- This data with the labeled cluster classes was analysed to understand the feature category falling into each cluster.
- <img src = "ML_Resources/KMeans_Outputclasses.png"></img>

# Supervised Machine Learning model
- Completing exploratory analysis of the climate change dataset using Unsupervised machine learning, it was observed that the features tempC, co2_emissions, population, rgdp, 9 of the energy consumption features explain most of the % of variance.
- To start with supervised ML, tempC and CO2_emissions were considered to be potential targets.
- Pairplots were plotted to understand the relationship of rest of the features with the targets.
- OneHotEncoder was used to convert the state_name categorical feature to numerical data so that it can be used in ML algorithm.
### X, y - Train, Test splits - Data transformation 
- X and Y split was performed to separate the target variable as "y" and rest of the features as "X".
- Both X and y were split into train and test sets using train_test_split of sklearn.model_selection library. This is mainly to fit the model using the training set and then evaluate the model using test data. 
- StandardScaler from sklearn library was used to transform the X_train and X_test dataset. No scaling needed for the y_train and y_test as "y" is the target value that has to be predicted by the model.
- As the target selected tempC is a continuous numerical data with multiple features supplied as inputs, multiple linear regression was selected as the model.
### Deep Neural Network - Multiple Linear Regression model
- Deep neural network was used to implement the multiple linear regression to predict the tempC as target and accepting all other features state, year, co2_emissions, population, rgdp, all 9 energy consumption features. Deep NN was designed using TensorFlow.Keras.Sequential model with 4 hidden layers having activation function as "relu". Output layer with 1 output and activation function as "linear". Number of neurons ranging from 150 (almost 2.5 times the number_of_inputs= 61 including the 48 states as numerical data) on the 1st hidden layer to 50 on the 4th hidden layer. Optimizer for the model was selected to be "adam".
- As it is multiple linear regression model accuracy metrics was selected to be "root mean squared error". 
- Number of epochs was selected to be 500 and the model was fitted with X_train_scaled and y_train datasets.
- Accuracy score of RMSE = 78.40% was achieved.
### SKLearn - Multiple Linear Regression model
- As the resources used in the DNN is way too many and expensive compared to other supervised ML model, "sklearn multiple linear regression" model was tried with the same set of X and y datasets. 
- After the model was fitted using X_train_scaled and y_train, the y meaning tempC was predicted using X_test_scaled.
- Accuracy score of R-Squared = 97.63% was calculated using the y_test and y_predicted.
### Confounding features & features behaving as proxies for US states
- In depth analysis of the features and running the machine learning model for various combinations like predicting tempC with just state, year having a near perfect R-squared of 97.55, led to the inference that the dataset has confounding features and some of the features of the dataset are behaving as proxies for US states. Statistically, this causes spurious association. 
- Considering the above observations, a model was built to predict tempC based on only the human impact features CO2_emissions, population, rgdp, 9 energy consumption features. The R-Squared for this model was found to be 43.68%.
- This model was taken up for further indepth statistical analysis using different data transformation techniques.
# Detailed Statistical analysis using Data Transformations :
- To be updated soon
- <<<<<>>>>>
- <<<<<>>>>>

---
---